<#
.SYNOPSIS
Checks traceability between architecture artifacts under technical/ and
business artifacts: every assessment, ADR, and design links to at least one
existing Initiative, Epic, Feature, or Story in the same language; each linked
business artifact lists the technical document in its Architecture references
header; and each technical artifact is listed in the matching technical index.
#>

$RepoRoot = (Resolve-Path "$PSScriptRoot/../../../..").Path
$artifactFolders = @('technical/assessments', 'technical/decisions', 'technical/designs')
$businessFolders = @('initiative', 'epics', 'features', 'stories')
$linkedPattern = '(?m)^> \*\*(?:Linked business artifacts|Art.facts d''affaires li.s)\s*:\*\*(.*)$'
$backlinkPattern = '(?m)^> \*\*(?:Architecture references|R.f.rences d''architecture)\s*:\*\*(.*)$'
$issues = @()
$checked = 0

function Get-LinkTargets {
    param([string]$Text, [string]$BaseDirectory)

    $targets = @()
    foreach ($match in [regex]::Matches($Text, '\[[^\]]*\]\(([^)]+)\)')) {
        $target = $match.Groups[1].Value
        if ($target -match '^(https?:|mailto:)') { continue }
        $path = ($target -replace '[#?].*$', '').Trim()
        if ([string]::IsNullOrWhiteSpace($path)) { continue }
        $path = [System.Uri]::UnescapeDataString($path)
        $targets += [System.IO.Path]::GetFullPath((Join-Path $BaseDirectory $path))
    }
    return $targets
}

function Get-Relative {
    param([string]$FullPath)
    return $FullPath.Substring($RepoRoot.Length + 1).Replace('\', '/')
}

$indexLinks = @{}
foreach ($language in @('EN', 'FR')) {
    $indexName = if ($language -eq 'FR') { 'README-fr.md' } else { 'README.md' }
    $indexPath = Join-Path $RepoRoot "technical/$indexName"
    if (Test-Path $indexPath) {
        $indexLinks[$language] = Get-LinkTargets -Text ([System.IO.File]::ReadAllText($indexPath)) -BaseDirectory (Split-Path $indexPath)
    } else {
        $issues += "MISSING INDEX: technical/$indexName"
        $indexLinks[$language] = @()
    }
}

foreach ($folder in $artifactFolders) {
    $folderPath = Join-Path $RepoRoot $folder
    if (-not (Test-Path $folderPath)) { continue }

    foreach ($file in Get-ChildItem -Path $folderPath -Filter '*.md' -File) {
        $checked++
        $relative = Get-Relative $file.FullName
        $isFrench = $file.Name -match '-fr\.md$'
        $language = if ($isFrench) { 'FR' } else { 'EN' }
        $text = [System.IO.File]::ReadAllText($file.FullName)

        if ($indexLinks[$language] -notcontains $file.FullName) {
            $issues += "MISSING INDEX ENTRY: $relative is not linked from technical/$(if ($isFrench) { 'README-fr.md' } else { 'README.md' })"
        }

        $linkedLine = [regex]::Match($text, $linkedPattern)
        if (-not $linkedLine.Success) {
            $issues += "MISSING HEADER: $relative has no linked business artifacts header field"
            continue
        }

        $businessTargets = @(Get-LinkTargets -Text $linkedLine.Groups[1].Value -BaseDirectory $file.DirectoryName | Where-Object {
            $targetRelative = if ($_.StartsWith($RepoRoot)) { Get-Relative $_ } else { '' }
            ($businessFolders -contains ($targetRelative.Split('/')[0])) -and (Test-Path $_)
        })
        if ($businessTargets.Count -eq 0) {
            $issues += "NO BUSINESS LINK: $relative does not link to an existing Initiative, Epic, Feature, or Story"
            continue
        }

        foreach ($target in $businessTargets) {
            $targetRelative = Get-Relative $target
            $targetIsFrench = $target -match '-fr\.md$'
            if ($targetIsFrench -ne $isFrench) {
                $issues += "LANGUAGE MISMATCH: $relative links to $targetRelative; link the $(if ($isFrench) { 'French' } else { 'English' }) copy"
                continue
            }
            $backlinkLine = [regex]::Match([System.IO.File]::ReadAllText($target), $backlinkPattern)
            $backlinks = if ($backlinkLine.Success) { Get-LinkTargets -Text $backlinkLine.Groups[1].Value -BaseDirectory (Split-Path $target) } else { @() }
            if ($backlinks -notcontains $file.FullName) {
                $issues += "MISSING BACKLINK: $targetRelative does not list $relative in its architecture references header"
            }
        }
    }
}

if ($issues.Count -eq 0) {
    Write-Output "OK: $checked architecture document(s) checked; business links, backlinks, and index entries are complete."
} else {
    Write-Output "FOUND $($issues.Count) architecture traceability issue(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
    exit 1
}
