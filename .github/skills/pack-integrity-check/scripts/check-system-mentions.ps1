<#
.SYNOPSIS
Advisory-only check: scans architecture documents for systems named without a
SYS-NNN ID - in the "Related systems" header of assessments, ADRs, and designs,
and in the From -> To column of a design's Interfaces and Integrations table.
Each name is compared with the canonical names and aliases in
system-register.md. Never fails the pack - warnings only, for the Solution
Architect (or the drafting AI) to resolve by citing the registered ID,
registering the system, or confirming it is not an independently managed system.
#>

$RepoRoot = (Resolve-Path "$PSScriptRoot/../../../..").Path
$registerPath = Join-Path $RepoRoot 'system-register.md'
$scanFolders = @('technical/assessments', 'technical/decisions', 'technical/designs')
$ignoredValues = '(?i)^(none( identified)?|not applicable.*|n/?a|to confirm|tbd|-+|\u2014)$'
$warnings = @()
$filesScanned = 0

if (-not (Test-Path $registerPath)) {
    Write-Output 'SYSTEM MENTIONS : system-register.md not found - skipping check'
    return
}

# Canonical names (column 2) and aliases (column 3) from the Systems table.
$knownNames = @{}
$registerText = [System.IO.File]::ReadAllText($registerPath)
$systemsSection = [regex]::Match($registerText, '(?ms)^## Systems\s*$(.*?)(?=^## |\z)').Groups[1].Value
foreach ($row in [regex]::Matches($systemsSection, '(?m)^\|\s*(SYS-\d{3})\s*\|([^|]*)\|([^|]*)\|')) {
    $id = $row.Groups[1].Value
    $canonical = $row.Groups[2].Value.Trim()
    $names = @($row.Groups[2].Value) + ($row.Groups[3].Value -split '[,;]')
    foreach ($name in $names) {
        $key = $name.Trim().ToLowerInvariant()
        if ($key) { $knownNames[$key] = "$id - $canonical" }
    }
}

function Get-Candidates {
    param([string]$Value)

    foreach ($part in ($Value -split '[,;]')) {
        $candidate = ($part -replace '[`*_]', '').Trim()
        if ([string]::IsNullOrWhiteSpace($candidate)) { continue }
        if ($candidate -match 'SYS-\d{3}') { continue }
        if ($candidate -match '^[<(\[]') { continue }
        if ($candidate -match $ignoredValues) { continue }
        $candidate
    }
}

function Add-Warning {
    param([string]$File, [string]$Where, [string]$Candidate)

    $registered = $knownNames[$Candidate.ToLowerInvariant()]
    if ($registered) {
        $script:warnings += "  [$File] $Where names '$Candidate' without its ID; cite it as '$registered'"
    } else {
        $script:warnings += "  [$File] $Where names possible unregistered system '$Candidate'"
    }
}

foreach ($folder in $scanFolders) {
    $folderPath = Join-Path $RepoRoot $folder
    if (-not (Test-Path $folderPath)) { continue }

    foreach ($file in Get-ChildItem -Path $folderPath -Filter '*.md' -File | Where-Object { $_.Name -notmatch '-fr\.md$' }) {
        $filesScanned++
        $lines = [regex]::Split([System.IO.File]::ReadAllText($file.FullName), "`r?`n")
        $inInterfaces = $false
        $toColumn = -1

        foreach ($line in $lines) {
            if ($line -match '^> \*\*Related systems:\*\*\s*(.*?)\s*$') {
                foreach ($candidate in (Get-Candidates $Matches[1])) { Add-Warning $file.Name 'Related systems header' $candidate }
                continue
            }
            if ($line -match '^#{1,3}\s') {
                $inInterfaces = $line -match '(?i)Interfaces and Integrations'
                $toColumn = -1
                continue
            }
            if (-not $inInterfaces -or $line -notmatch '^\|' -or $line -match '^\|\s*-{2,}') { continue }

            $cells = @($line.Trim().Trim('|') -split '\|' | ForEach-Object { $_.Trim() })
            if ($toColumn -lt 0) {
                for ($i = 0; $i -lt $cells.Count; $i++) {
                    if ($cells[$i] -match '(?i)From\s*(\u2192|->)\s*To') { $toColumn = $i }
                }
                continue
            }
            if ($toColumn -ge $cells.Count) { continue }
            foreach ($endpoint in ($cells[$toColumn] -split '\u2192|->')) {
                foreach ($candidate in (Get-Candidates $endpoint)) { Add-Warning $file.Name 'Interfaces table' $candidate }
            }
        }
    }
}

Write-Output "SYSTEM MENTIONS : scanned $filesScanned architecture document(s) against $($knownNames.Count) registered name(s) and alias(es)"
if ($warnings.Count -eq 0) {
    Write-Output '  OK - no system named without a SYS ID (heuristic scan; always double-check judgment calls)'
} else {
    Write-Output "  ADVISORY WARNINGS ($($warnings.Count)) - cite the SYS ID, register the system, or confirm it is not an independently managed system:"
    $warnings | Sort-Object -Unique | ForEach-Object { Write-Output $_ }
}
