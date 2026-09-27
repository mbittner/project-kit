<#
.SYNOPSIS
Checks that every business-facing Markdown document is linked from the
matching English or French table of contents. Technical and template folders
are deliberately excluded.
#>

$RepoRoot = (Resolve-Path "$PSScriptRoot/../../../..").Path
$tocConfigurations = @(
    [PSCustomObject]@{ Language = 'EN'; Name = 'table-of-content.md' },
    [PSCustomObject]@{ Language = 'FR'; Name = 'table-of-content-fr.md' }
)
$excludedDirectories = @(
    '.git', '.github', 'templates', 'docs', 'release-notes',
    'architecture', 'technical', 'technical-docs', 'technical-documentation', 'implementation'
)
$excludedRootFiles = @(
    'README.md', 'README-fr.md', 'table-of-content.md', 'table-of-content-fr.md'
)
$issues = @()
$tocLinks = @{}

foreach ($toc in $tocConfigurations) {
    $tocPath = Join-Path $RepoRoot $toc.Name
    if (-not (Test-Path $tocPath)) {
        $issues += "MISSING TABLE OF CONTENTS: $($toc.Name)"
        continue
    }

    $content = [System.IO.File]::ReadAllText($tocPath)
    $paths = @()
    foreach ($match in [regex]::Matches($content, '\[[^\]]*\]\(([^)]+)\)')) {
        $target = $match.Groups[1].Value
        if ($target -match '^(https?:|mailto:)') { continue }
        $targetPath = ($target -replace '[#?].*$', '').Trim()
        if ([string]::IsNullOrWhiteSpace($targetPath)) { continue }
        $targetPath = [System.Uri]::UnescapeDataString($targetPath)
        $paths += [System.IO.Path]::GetFullPath((Join-Path $RepoRoot $targetPath))
    }
    $tocLinks[$toc.Language] = $paths
}

$businessFiles = Get-ChildItem -Path $RepoRoot -Recurse -Filter '*.md' -File | Where-Object {
    $relativePath = $_.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
    $pathParts = $relativePath.Split('/')
    $isExcludedDirectory = $false
    foreach ($part in $pathParts) {
        if ($excludedDirectories -contains $part) {
            $isExcludedDirectory = $true
            break
        }
    }
    -not $isExcludedDirectory -and $relativePath -notin $excludedRootFiles
}

foreach ($file in $businessFiles) {
    $language = if ($file.Name -match '-fr\.md$') { 'FR' } else { 'EN' }
    if (-not $tocLinks.ContainsKey($language)) { continue }
    if ($tocLinks[$language] -notcontains $file.FullName) {
        $relativePath = $file.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
        $tocName = if ($language -eq 'FR') { 'table-of-content-fr.md' } else { 'table-of-content.md' }
        $issues += "MISSING TOC ENTRY: $relativePath is not linked from $tocName"
    }
}

if ($issues.Count -eq 0) {
    Write-Output "OK: all $($businessFiles.Count) business-facing Markdown documents are linked from the matching table of contents."
} else {
    Write-Output "FOUND $($issues.Count) table-of-contents issue(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
    exit 1
}
