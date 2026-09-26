<#
.SYNOPSIS
Checks EN/FR structural parity for the Modern BA Practice Markdown Pack:
every English doc has a French counterpart (and vice versa), and both
have the same number of level-2 (##) headings.
#>

$RepoRoot = Resolve-Path "$PSScriptRoot/../../../.."
$foldersToCheck = @('initiative', 'epics', 'features', 'stories', 'change-management')
$issues = @()

foreach ($folder in $foldersToCheck) {
    $path = Join-Path $RepoRoot $folder
    if (-not (Test-Path $path)) { continue }

    $enFiles = Get-ChildItem -Path $path -Filter '*.md' -File | Where-Object { $_.Name -notmatch '-fr\.md$' }
    foreach ($en in $enFiles) {
        $frName = $en.Name -replace '\.md$', '-fr.md'
        $frPath = Join-Path $path $frName
        if (-not (Test-Path $frPath)) {
            $issues += "MISSING FR: $folder/$($en.Name) has no counterpart $frName"
            continue
        }
        $enHeadings = (Select-String -Path $en.FullName -Pattern '^## ').Count
        $frHeadings = (Select-String -Path $frPath -Pattern '^## ').Count
        if ($enHeadings -ne $frHeadings) {
            $issues += "PARITY MISMATCH: $folder/$($en.Name) has $enHeadings level-2 headings, $frName has $frHeadings"
        }
    }

    $frFiles = Get-ChildItem -Path $path -Filter '*-fr.md' -File
    foreach ($fr in $frFiles) {
        $enName = $fr.Name -replace '-fr\.md$', '.md'
        $enPath = Join-Path $path $enName
        if (-not (Test-Path $enPath)) {
            $issues += "ORPHAN FR: $folder/$($fr.Name) has no English counterpart $enName"
        }
    }
}

# Root-level EN/FR pairs (README, table of contents) are checked the same way.
# Root-level guidance, contents, and registers are checked the same way.
$rootFiles = @('README.md', 'table-of-content.md', 'stakeholder-register.md', 'documentation-register.md')
foreach ($enName in $rootFiles) {
    $enPath = Join-Path $RepoRoot $enName
    if (-not (Test-Path $enPath)) { continue }
    $frName = $enName -replace '\.md$', '-fr.md'
    $frPath = Join-Path $RepoRoot $frName
    if (-not (Test-Path $frPath)) {
        $issues += "MISSING FR: $enName has no counterpart $frName"
        continue
    }
    $enHeadings = (Select-String -Path $enPath -Pattern '^## ').Count
    $frHeadings = (Select-String -Path $frPath -Pattern '^## ').Count
    if ($enHeadings -ne $frHeadings) {
        $issues += "PARITY MISMATCH: $enName has $enHeadings level-2 headings, $frName has $frHeadings"
    }
}

if ($issues.Count -eq 0) {
    Write-Output "OK: EN/FR parity check passed for all files."
} else {
    Write-Output "FOUND $($issues.Count) parity issue(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
}
