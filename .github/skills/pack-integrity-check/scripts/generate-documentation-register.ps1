<#
.SYNOPSIS
Regenerates the documentation register's status snapshot and approved-baseline
list from business-document headers. The manually maintained Active Work section
is left untouched.
#>

$RepoRoot = (Resolve-Path "$PSScriptRoot/../../../..").Path
$excludedDirectories = @(
    '.git', '.github', 'templates', 'docs', 'release-notes',
    'technical', 'technical-docs', 'technical-documentation', 'implementation'
)
$excludedRootFiles = @(
    'README.md', 'README-fr.md', 'table-of-content.md', 'table-of-content-fr.md',
    'documentation-register.md', 'documentation-register-fr.md',
    'stakeholder-register.md', 'stakeholder-register-fr.md'
)
$issues = @()
$documents = @()

function Get-HeaderValue {
    param(
        [string]$Text,
        [string]$Prefix
    )

    foreach ($line in [regex]::Split($Text, "`r?`n")) {
        if ($line.StartsWith($Prefix, [System.StringComparison]::Ordinal)) {
            return $line.Substring($Prefix.Length).Trim()
        }
    }
    return $null
}

function Normalize-Status {
    param([string]$Value)

    if ($null -eq $Value) { return $null }
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
        default { return $value }
    }
}

function Get-ArtifactType {
    param([string]$RelativePath)

    if ($RelativePath -match '^initiative/') { return 'Initiative' }
    if ($RelativePath -match '^epics/') { return 'Epics' }
    if ($RelativePath -match '^features/') { return 'Features' }
    if ($RelativePath -match '^stories/') { return 'User Stories' }
    if ($RelativePath -match '^change-management/') { return 'Change Management' }
    return 'Other Business Documents'
}

$allMarkdown = Get-ChildItem -Path $RepoRoot -Recurse -Filter '*.md' -File | Where-Object {
    $relative = $_.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
    $parts = $relative.Split('/')
    $excluded = $relative -in $excludedRootFiles
    foreach ($part in $parts) {
        if ($excludedDirectories -contains $part) { $excluded = $true; break }
    }
    -not $excluded
}

$englishFiles = $allMarkdown | Where-Object { $_.Name -notmatch '-fr\.md$' }
foreach ($english in $englishFiles) {
    $englishText = [System.IO.File]::ReadAllText($english.FullName)
    $englishStatusRaw = Get-HeaderValue -Text $englishText -Prefix '> **Document status:**'
    if ($null -eq $englishStatusRaw) { continue }

    $englishVersion = Get-HeaderValue -Text $englishText -Prefix '> **Document version:**'
    $relative = $english.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
    $frenchPath = Join-Path $english.DirectoryName ($english.BaseName + '-fr.md')
    if (-not (Test-Path $frenchPath)) {
        $issues += "MISSING FRENCH PAIR: $relative"
        continue
    }
    if ([string]::IsNullOrWhiteSpace($englishVersion)) {
        $issues += "MISSING VERSION: $relative"
        continue
    }

    $frenchText = [System.IO.File]::ReadAllText($frenchPath)
    $frenchStatusRaw = Get-HeaderValue -Text $frenchText -Prefix '> **Statut du document :**'
    $frenchVersion = Get-HeaderValue -Text $frenchText -Prefix '> **Version du document :**'
    $frenchRelative = $frenchPath.Substring($RepoRoot.Length + 1).Replace('\', '/')
    if ((Normalize-Status $englishStatusRaw) -ne (Normalize-Status $frenchStatusRaw)) {
        $issues += "STATUS MISMATCH: $relative and $frenchRelative"
        continue
    }
    if ($englishVersion -ne $frenchVersion) {
        $issues += "VERSION MISMATCH: $relative and $frenchRelative"
        continue
    }

    $heading = [regex]::Match($englishText, '(?m)^#\s+(.+)$').Groups[1].Value
    $idMatch = [regex]::Match($heading, '\b(CM-EPIC|CM-FEAT|INIT|EPIC|FEAT|STORY)-\d+\b')
    $displayId = if ($idMatch.Success) { $idMatch.Value } else { [System.IO.Path]::GetFileNameWithoutExtension($english.Name) }
    if ($english.Name -eq 'README.md' -and $english.DirectoryName -eq $RepoRoot) { $displayId = 'Documentation Overview' }
    if ($english.Name -eq 'README.md' -and $relative -eq 'change-management/README.md') { $displayId = 'Change Management Guide' }
    if ($english.Name -eq 'executive-summary.md') { $displayId = 'Executive Summary' }

    $lastValidated = [regex]::Match($englishText, '(?m)^> \*\*Last validated:\*\*\s*(\d{4}-\d{2}-\d{2})').Groups[1].Value
    if ([string]::IsNullOrWhiteSpace($lastValidated)) { $lastValidated = 'Not recorded' }
    $documents += [PSCustomObject]@{
        Type = Get-ArtifactType -RelativePath $relative
        Id = $displayId
        Status = Normalize-Status $englishStatusRaw
        Version = $englishVersion
        LastValidated = $lastValidated
        EnglishPath = $relative
        FrenchPath = $frenchRelative
    }
}

$frenchFiles = $allMarkdown | Where-Object { $_.Name -match '-fr\.md$' }
foreach ($french in $frenchFiles) {
    $englishPath = Join-Path $french.DirectoryName ($french.BaseName -replace '-fr$', '.md')
    if (-not (Test-Path $englishPath)) {
        $relative = $french.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
        if ($null -ne (Get-HeaderValue -Text ([System.IO.File]::ReadAllText($french.FullName)) -Prefix '> **Statut du document :**')) {
            $issues += "ORPHAN FRENCH DOCUMENT: $relative"
        }
    }
}

if ($issues.Count -gt 0) {
    Write-Output "Cannot generate the documentation register; found $($issues.Count) metadata issue(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
    exit 1
}

$typeOrder = @('Initiative', 'Epics', 'Features', 'User Stories', 'Change Management', 'Other Business Documents')
$counts = @{}
foreach ($type in $typeOrder) {
    $counts[$type] = @{ Pairs = 0; Draft = 0; Illustrative = 0; Review = 0; Approved = 0 }
}
foreach ($document in $documents) {
    $row = $counts[$document.Type]
    $row.Pairs++
    switch ($document.Status) {
        'Draft' { $row.Draft++ }
        'Illustrative working draft' { $row.Illustrative++ }
        'In Review' { $row.Review++ }
        'Approved' { $row.Approved++ }
    }
}

$approved = @($documents | Where-Object { $_.Status -eq 'Approved' } | Sort-Object Type, Id)
$date = Get-Date -Format 'yyyy-MM-dd'
$upperEacute = [char]0x00C9
$lowerEacute = [char]0x00E9
$lowerEgrave = [char]0x00E8
$lowerCcedilla = [char]0x00E7
$frenchTypes = @{
    'Initiative' = 'Initiative'
    'Epics' = ([string]$upperEacute + 'pop' + [string]$lowerEacute + 'es')
    'Features' = ('Fonctionnalit' + [string]$lowerEacute + 's')
    'User Stories' = ('R' + [string]$lowerEacute + 'cits utilisateur')
    'Change Management' = 'Gestion du changement'
    'Other Business Documents' = 'Autres documents d''affaires'
}
$frDateLine = '**Date du relev' + [string]$lowerEacute + ' :** ' + $date
$frArtifactHeader = '| Type d''art' + [string]$lowerEacute + 'fact | Paires EN/FR | ' + [string]$upperEacute + 'bauches | ' + [string]$upperEacute + 'bauches illustratives | En r' + [string]$lowerEacute + 'vision | Approuv' + [string]$lowerEacute + 's |'
$enSnapshot = @(
    "**Snapshot date:** $date",
    '',
    '| Artifact Type | EN/FR Pairs | Draft | Illustrative Drafts | In Review | Approved |',
    '|---|---:|---:|---:|---:|---:|'
)
$frSnapshot = @(
    $frDateLine,
    '',
    $frArtifactHeader,
    '|---|---:|---:|---:|---:|---:|'
)
$totalPairs = 0
$totalDraft = 0
$totalIllustrative = 0
$totalReview = 0
$totalApproved = 0

foreach ($type in $typeOrder) {
    $row = $counts[$type]
    if ($row.Pairs -eq 0) { continue }
    $enSnapshot += "| $type | $($row.Pairs) | $($row.Draft) | $($row.Illustrative) | $($row.Review) | $($row.Approved) |"
    $frSnapshot += "| $($frenchTypes[$type]) | $($row.Pairs) | $($row.Draft) | $($row.Illustrative) | $($row.Review) | $($row.Approved) |"
    $totalPairs += $row.Pairs
    $totalDraft += $row.Draft
    $totalIllustrative += $row.Illustrative
    $totalReview += $row.Review
    $totalApproved += $row.Approved
}
$enSnapshot += "| **Total** | **$totalPairs** | **$totalDraft** | **$totalIllustrative** | **$totalReview** | **$totalApproved** |"
$frSnapshot += "| **Total** | **$totalPairs** | **$totalDraft** | **$totalIllustrative** | **$totalReview** | **$totalApproved** |"

$enApproved = @()
$frApproved = @()
if ($approved.Count -eq 0) {
    $enApproved += "None recorded as of $date."
    $frApproved += ('Aucune base approuv' + [string]$lowerEacute + 'e consign' + [string]$lowerEacute + 'e au ' + $date + '.')
} else {
    $enApproved += '| Artifact | Baseline Version | Last Validated | English Document | French Document |'
    $enApproved += '|---|---|---|---|---|'
    $frApproved += ('| Art' + [string]$lowerEacute + 'fact | Version de base | Derni' + [string]$lowerEgrave + 're validation | Document anglais | Document fran' + [string]$lowerCcedilla + 'ais |')
    $frApproved += '|---|---|---|---|---|'
    foreach ($document in $approved) {
        $enApproved += "| $($document.Id) | $($document.Version) | $($document.LastValidated) | [EN]($($document.EnglishPath)) | [FR]($($document.FrenchPath)) |"
        $frApproved += "| $($document.Id) | $($document.Version) | $($document.LastValidated) | [EN]($($document.EnglishPath)) | [FR]($($document.FrenchPath)) |"
    }
}

function Replace-GeneratedRegion {
    param(
        [string]$Path,
        [string]$StartMarker,
        [string]$EndMarker,
        [string[]]$Body
    )

    $bytes = [System.IO.File]::ReadAllBytes($Path)
    $hasBom = $bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF
    $offset = if ($hasBom) { 3 } else { 0 }
    $encoding = [System.Text.UTF8Encoding]::new($hasBom)
    $text = $encoding.GetString($bytes, $offset, $bytes.Length - $offset)
    $newline = if ($text.Contains("`r`n")) { "`r`n" } else { "`n" }
    $startIndex = $text.IndexOf($StartMarker, [System.StringComparison]::Ordinal)
    if ($startIndex -lt 0) { throw "Missing generated-region marker '$StartMarker' in $Path" }
    $endIndex = $text.IndexOf($EndMarker, $startIndex + $StartMarker.Length, [System.StringComparison]::Ordinal)
    if ($endIndex -lt 0) { throw "Missing generated-region marker '$EndMarker' in $Path" }
    $bodyText = $Body -join $newline
    $replacement = $StartMarker + $newline + $bodyText + $newline + $EndMarker
    $updated = $text.Substring(0, $startIndex) + $replacement + $text.Substring($endIndex + $EndMarker.Length)
    [System.IO.File]::WriteAllText($Path, $updated, $encoding)
}

$enRegister = Join-Path $RepoRoot 'documentation-register.md'
$frRegister = Join-Path $RepoRoot 'documentation-register-fr.md'
Replace-GeneratedRegion -Path $enRegister -StartMarker '<!-- GENERATED PORTFOLIO SNAPSHOT START -->' -EndMarker '<!-- GENERATED PORTFOLIO SNAPSHOT END -->' -Body $enSnapshot
Replace-GeneratedRegion -Path $frRegister -StartMarker '<!-- GENERATED PORTFOLIO SNAPSHOT START -->' -EndMarker '<!-- GENERATED PORTFOLIO SNAPSHOT END -->' -Body $frSnapshot
Replace-GeneratedRegion -Path $enRegister -StartMarker '<!-- GENERATED APPROVED BASELINES START -->' -EndMarker '<!-- GENERATED APPROVED BASELINES END -->' -Body $enApproved
Replace-GeneratedRegion -Path $frRegister -StartMarker '<!-- GENERATED APPROVED BASELINES START -->' -EndMarker '<!-- GENERATED APPROVED BASELINES END -->' -Body $frApproved

Write-Output "Updated both documentation registers from $($documents.Count) bilingual document pairs; $($approved.Count) approved baseline(s) recorded."
