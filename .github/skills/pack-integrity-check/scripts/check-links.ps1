<#
.SYNOPSIS
Finds relative markdown links ([text](path)) across the repo that don't
resolve to a real file. Skips http(s), mailto, in-page anchors, inline
code spans (backtick-quoted syntax examples), and the templates/ folder
(intentional bracketed placeholders that are never meant to resolve).
#>

$RepoRoot = Resolve-Path "$PSScriptRoot/../../../.."
$mdFiles = Get-ChildItem -Path $RepoRoot -Recurse -Filter '*.md' -File | Where-Object {
    $_.FullName -notmatch '\\\.git\\' -and $_.FullName -notmatch '\\templates\\'
}
$linkPattern = '\[[^\]]*\]\(([^)]+)\)'
$issues = @()

foreach ($file in $mdFiles) {
    $lines = Get-Content -Path $file.FullName
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = [regex]::Replace($lines[$i], '`[^`]*`', '')
        $lineMatches = [regex]::Matches($line, $linkPattern)
        foreach ($m in $lineMatches) {
            $target = $m.Groups[1].Value
            if ($target -match '^(https?:|mailto:)') { continue }
            $targetPath = $target -replace '#.*$', ''
            if ([string]::IsNullOrWhiteSpace($targetPath)) { continue }
            $resolved = Join-Path $file.DirectoryName $targetPath
            if (-not (Test-Path $resolved)) {
                $relFile = $file.FullName.Substring($RepoRoot.Path.Length + 1)
                $issues += "${relFile}:$($i + 1) -> broken link '$target'"
            }
        }
    }
}

if ($issues.Count -eq 0) {
    Write-Output "OK: no broken relative links found."
} else {
    Write-Output "FOUND $($issues.Count) broken link(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
}
