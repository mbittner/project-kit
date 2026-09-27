<#
.SYNOPSIS
Checks bilingual document status/version headers and Markdown line rendering.
#>

$RepoRoot = (Resolve-Path "$PSScriptRoot/../../../..").Path
$foldersToCheck = @('initiative', 'epics', 'features', 'stories', 'change-management', 'technical', 'templates')
$issues = @()

function Get-HeaderField {
    param(
        [string[]]$Lines,
        [string]$Prefix
    )

    for ($index = 0; $index -lt $Lines.Count; $index++) {
        if ($Lines[$index].StartsWith($Prefix, [System.StringComparison]::Ordinal)) {
            return [PSCustomObject]@{
                Index = $index
                Line = $Lines[$index]
                Value = $Lines[$index].Substring($Prefix.Length).Trim()
            }
        }
    }
    return $null
}

function Normalize-Status {
    param([string]$Value)

    $decomposed = $Value.Trim().Normalize([System.Text.NormalizationForm]::FormD)
    $builder = New-Object System.Text.StringBuilder
    foreach ($character in $decomposed.ToCharArray()) {
        if ([System.Globalization.CharUnicodeInfo]::GetUnicodeCategory($character) -ne [System.Globalization.UnicodeCategory]::NonSpacingMark) {
            [void]$builder.Append($character)
        }
    }
    $value = $builder.ToString().ToLowerInvariant()
    switch ($value) {
        'draft' { return 'Draft' }
        'ebauche' { return 'Draft' }
        'illustrative working draft' { return 'Illustrative working draft' }
        'ebauche de travail illustrative' { return 'Illustrative working draft' }
        'in review' { return 'In Review' }
        'en revision' { return 'In Review' }
        'approved' { return 'Approved' }
        'approuve' { return 'Approved' }
        'recommended' { return 'Recommended' }
        'recommandee' { return 'Recommended' }
        'closed' { return 'Closed' }
        'cloturee' { return 'Closed' }
        'proposed' { return 'Proposed' }
        'proposee' { return 'Proposed' }
        'accepted' { return 'Accepted' }
        'acceptee' { return 'Accepted' }
        'rejected' { return 'Rejected' }
        'rejetee' { return 'Rejected' }
        'superseded' { return 'Superseded' }
        'remplacee' { return 'Superseded' }
        'deprecated' { return 'Deprecated' }
        'obsolete' { return 'Deprecated' }
        default { return $value }
    }
}

foreach ($folder in $foldersToCheck) {
    $folderPath = Join-Path $RepoRoot $folder
    if (-not (Test-Path $folderPath)) { continue }

    $englishFiles = Get-ChildItem -Path $folderPath -Filter '*.md' -File -Recurse | Where-Object {
        $_.Name -notmatch '-fr\.md$'
    }
    foreach ($english in $englishFiles) {
        $englishText = [System.IO.File]::ReadAllText($english.FullName)
        $englishLines = [regex]::Split($englishText, "`r?`n")
        $englishStatus = Get-HeaderField -Lines $englishLines -Prefix '> **Document status:**'
        if ($null -eq $englishStatus) { continue }
        $englishVersion = Get-HeaderField -Lines $englishLines -Prefix '> **Document version:**'
        $relative = $english.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
        $frenchPath = Join-Path $english.DirectoryName ($english.BaseName + '-fr.md')

        if (-not (Test-Path $frenchPath)) {
            $issues += "MISSING FR HEADER PAIR: $relative"
            continue
        }
        if ($null -eq $englishVersion) {
            $issues += "MISSING VERSION FIELD: $relative"
            continue
        }
        if ($englishVersion.Index -ne ($englishStatus.Index + 1)) {
            $issues += "HEADER SPACING: $relative must place Document version immediately after Document status"
        }
        if (-not $englishVersion.Line.EndsWith('  ')) {
            $issues += "MISSING HARD BREAK: $relative version row must end with two spaces"
        }
        if (($englishVersion.Index + 1) -ge $englishLines.Count -or -not $englishLines[$englishVersion.Index + 1].StartsWith('> **')) {
            $issues += "PARENT ROW: $relative must place the next header field on its own blockquote row"
        }

        $frenchText = [System.IO.File]::ReadAllText($frenchPath)
        $frenchLines = [regex]::Split($frenchText, "`r?`n")
        $frenchStatus = Get-HeaderField -Lines $frenchLines -Prefix '> **Statut du document :**'
        $frenchVersion = Get-HeaderField -Lines $frenchLines -Prefix '> **Version du document :**'
        $frenchRelative = $frenchPath.Substring($RepoRoot.Length + 1).Replace('\', '/')

        if ($null -eq $frenchStatus) {
            $issues += "MISSING FRENCH STATUS: $frenchRelative"
            continue
        }
        if ($null -eq $frenchVersion) {
            $issues += "MISSING FRENCH VERSION LABEL: $frenchRelative must use 'Version du document'"
            continue
        }
        if ($frenchVersion.Index -ne ($frenchStatus.Index + 1)) {
            $issues += "HEADER SPACING: $frenchRelative must place Version du document immediately after Statut du document"
        }
        if (-not $frenchVersion.Line.EndsWith('  ')) {
            $issues += "MISSING HARD BREAK: $frenchRelative version row must end with two spaces"
        }
        if (($frenchVersion.Index + 1) -ge $frenchLines.Count -or -not $frenchLines[$frenchVersion.Index + 1].StartsWith('> **')) {
            $issues += "PARENT ROW: $frenchRelative must place the next header field on its own blockquote row"
        }
        if ((Normalize-Status $englishStatus.Value) -ne (Normalize-Status $frenchStatus.Value)) {
            $issues += "STATUS MISMATCH: $relative and $frenchRelative have different document statuses"
        }
        if ($englishVersion.Value -ne $frenchVersion.Value) {
            $issues += "VERSION MISMATCH: $relative and $frenchRelative have different baseline versions"
        }
    }

    $frenchFiles = Get-ChildItem -Path $folderPath -Filter '*-fr.md' -File -Recurse
    foreach ($french in $frenchFiles) {
        $englishPath = Join-Path $french.DirectoryName ($french.BaseName -replace '-fr$', '.md')
        if (-not (Test-Path $englishPath)) {
            $relative = $french.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
            $issues += "ORPHAN FRENCH HEADER: $relative"
        }
    }
}

# Assessments and ADRs use their own status field instead of a baseline version.
$architectureStatuses = @{
    'Assessment' = @('Draft', 'In Review', 'Recommended', 'Closed')
    'Decision' = @('Proposed', 'Accepted', 'Rejected', 'Superseded', 'Deprecated')
}
foreach ($folder in @('technical', 'templates')) {
    $folderPath = Join-Path $RepoRoot $folder
    if (-not (Test-Path $folderPath)) { continue }

    $englishFiles = Get-ChildItem -Path $folderPath -Filter '*.md' -File -Recurse | Where-Object { $_.Name -notmatch '-fr\.md$' }
    foreach ($english in $englishFiles) {
        $englishText = [System.IO.File]::ReadAllText($english.FullName)
        $englishMatch = [regex]::Match($englishText, '(?m)^> \*\*(Assessment|Decision) status:\*\*\s*(.*?)\s*$')
        if (-not $englishMatch.Success) { continue }
        $kind = $englishMatch.Groups[1].Value
        $relative = $english.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
        $englishValue = Normalize-Status $englishMatch.Groups[2].Value
        if ($architectureStatuses[$kind] -notcontains $englishValue) {
            $issues += "INVALID $($kind.ToUpperInvariant()) STATUS: $relative has '$($englishMatch.Groups[2].Value)'; valid values are $($architectureStatuses[$kind] -join ', ')"
        }

        $frenchPath = Join-Path $english.DirectoryName ($english.BaseName + '-fr.md')
        if (-not (Test-Path $frenchPath)) {
            $issues += "MISSING FR HEADER PAIR: $relative"
            continue
        }
        $frenchRelative = $frenchPath.Substring($RepoRoot.Length + 1).Replace('\', '/')
        $frenchLabel = if ($kind -eq 'Assessment') { "Statut de l'.valuation" } else { 'Statut de la d.cision' }
        $frenchMatch = [regex]::Match([System.IO.File]::ReadAllText($frenchPath), "(?m)^> \*\*$frenchLabel :\*\*\s*(.*?)\s*$")
        if (-not $frenchMatch.Success) {
            $issues += "MISSING FRENCH STATUS: $frenchRelative must carry the French $($kind.ToLowerInvariant()) status field"
            continue
        }
        if ((Normalize-Status $frenchMatch.Groups[1].Value) -ne $englishValue) {
            $issues += "STATUS MISMATCH: $relative and $frenchRelative have different $($kind.ToLowerInvariant()) statuses"
        }
    }
}

if ($issues.Count -eq 0) {
    Write-Output 'OK: EN/FR status and version headers match and render on separate rows.'
} else {
    Write-Output "FOUND $($issues.Count) document-header issue(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
    exit 1
}
