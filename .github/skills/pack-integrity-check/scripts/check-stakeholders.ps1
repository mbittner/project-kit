<#
.SYNOPSIS
Advisory-only check: scans documents for stakeholder-bearing sections (Impacted
Stakeholder Groups, Who Is Affected, Users, Personas, Primary User/Stakeholder,
Stakeholders) and flags any named stakeholder that doesn't appear anywhere in
stakeholder-register.md. Never fails the pack - warnings only, for a human (or
the drafting AI) to resolve by registering the stakeholder or logging it in an
Open Questions Log.
#>

$RepoRoot = Resolve-Path "$PSScriptRoot/../../../.."
$RegisterPath = Join-Path $RepoRoot 'stakeholder-register.md'

if (-not (Test-Path $RegisterPath)) {
    Write-Output "STAKEHOLDERS : stakeholder-register.md not found - skipping check"
    return
}

$registerText = Get-Content -Path $RegisterPath -Raw

$sectionHeadingPattern = '(?im)^#{1,3}\s*\d*\.?\s*(Impacted Stakeholder Groups|Who Is Affected|Stakeholders|Users|Personas|Primary User\s*/\s*Stakeholder)\s*$'

$scanFolders = @('initiative', 'epics', 'features', 'stories', 'change-management')
$warnings = @()
$filesScanned = 0

foreach ($folder in $scanFolders) {
    $folderPath = Join-Path $RepoRoot $folder
    if (-not (Test-Path $folderPath)) { continue }

    $files = Get-ChildItem -Path $folderPath -Filter '*.md' -File | Where-Object { $_.Name -notmatch '-fr\.md$' }
    foreach ($file in $files) {
        $filesScanned++
        $lines = Get-Content -Path $file.FullName

        $inStakeholderSection = $false
        foreach ($line in $lines) {
            if ($line -match '(?i)^#{1,3}\s') {
                $inStakeholderSection = ($line -match $sectionHeadingPattern)
                continue
            }
            if (-not $inStakeholderSection) { continue }

            # Table row: | Name | ... |  (skip separator rows like |---|---|)
            if ($line -match '^\|\s*([^\|]+?)\s*\|' -and $line -notmatch '^\|\s*-{2,}') {
                $candidate = $Matches[1].Trim()
                if ($candidate -match '(?i)^(stakeholder|persona|role|group|persona/role)') { continue }
                if ([string]::IsNullOrWhiteSpace($candidate)) { continue }

                if ($registerText -notmatch [regex]::Escape($candidate)) {
                    $warnings += "  [$($file.Name)] possible unregistered stakeholder: '$candidate'"
                }
            }
        }
    }
}

Write-Output "STAKEHOLDERS : scanned $filesScanned file(s) across $($scanFolders -join ', ')"
if ($warnings.Count -eq 0) {
    Write-Output "  OK - no unregistered stakeholders detected (heuristic scan; always double-check judgment calls)"
} else {
    Write-Output "  ADVISORY WARNINGS ($($warnings.Count)) - register these or log them in the document's Open Questions Log:"
    $warnings | ForEach-Object { Write-Output $_ }
}
