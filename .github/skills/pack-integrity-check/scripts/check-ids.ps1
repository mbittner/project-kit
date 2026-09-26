<#
.SYNOPSIS
Checks INIT-XXX, EPIC-XXX, FEAT-XXX, CM-EPIC-XXX, and CM-FEAT-XXX filenames
for duplicate or gapped numbers, and reports the next free ID per prefix.
#>

$RepoRoot = Resolve-Path "$PSScriptRoot/../../../.."

function Get-IdReport {
    param([string]$Path, [string]$Pattern, [string]$Prefix)

    if (-not (Test-Path $Path)) {
        Write-Output "$Prefix : folder not found ($Path)"
        return
    }

    $files = Get-ChildItem -Path $Path -Filter '*.md' -File | Where-Object { $_.Name -notmatch '-fr\.md$' }
    $numbers = @()
    foreach ($f in $files) {
        if ($f.Name -match $Pattern) {
            $numbers += [int]$Matches[1]
        }
    }
    $numbers = $numbers | Sort-Object

    if ($numbers.Count -eq 0) {
        Write-Output "$Prefix : 0 file(s) found"
        return
    }

    $dupes = $numbers | Group-Object | Where-Object { $_.Count -gt 1 } | ForEach-Object { $_.Name }
    $gaps = @()
    for ($i = 1; $i -lt $numbers[-1]; $i++) {
        if ($numbers -notcontains $i) { $gaps += $i }
    }

    $nextFree = $numbers[-1] + 1
    Write-Output "$Prefix : $($numbers.Count) file(s), highest = $($numbers[-1]), next free = $('{0:D3}' -f $nextFree)"
    if ($dupes.Count -gt 0) { Write-Output "  DUPLICATES: $($dupes -join ', ')" }
    if ($gaps.Count -gt 0) { Write-Output "  GAPS: $($gaps -join ', ')" }
}

Get-IdReport -Path (Join-Path $RepoRoot 'initiative') -Pattern '^init-(\d+)-' -Prefix 'INIT'
Get-IdReport -Path (Join-Path $RepoRoot 'epics') -Pattern '^epic-(\d+)-' -Prefix 'EPIC'
Get-IdReport -Path (Join-Path $RepoRoot 'features') -Pattern '^feat-(\d+)-' -Prefix 'FEAT'
Get-IdReport -Path (Join-Path $RepoRoot 'stories') -Pattern '^story-(\d+)-' -Prefix 'STORY'
Get-IdReport -Path (Join-Path $RepoRoot 'change-management') -Pattern '^cm-epic-(\d+)-' -Prefix 'CM-EPIC'
Get-IdReport -Path (Join-Path $RepoRoot 'change-management') -Pattern '^cm-feat-(\d+)-' -Prefix 'CM-FEAT'
