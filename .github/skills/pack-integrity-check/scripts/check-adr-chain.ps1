<#
.SYNOPSIS
Checks ADR lifecycle integrity under technical/decisions/: valid decision
statuses, a named owner and decision date on decided ADRs, reciprocal
Supersedes / Superseded by links, and no supersession cycles. English copies
are authoritative for the chain; check-document-headers.ps1 verifies that the
French status matches.
#>

$RepoRoot = (Resolve-Path "$PSScriptRoot/../../../..").Path
$decisionsPath = Join-Path $RepoRoot 'technical/decisions'
$validStatuses = @('Proposed', 'Accepted', 'Rejected', 'Superseded', 'Deprecated')
$decidedStatuses = @('Accepted', 'Superseded', 'Deprecated')
$issues = @()

if (-not (Test-Path $decisionsPath)) {
    Write-Output 'OK: no ADRs recorded yet (technical/decisions/ has not been created).'
    exit 0
}

function Get-Field {
    param([string]$Text, [string]$Label)

    $match = [regex]::Match($Text, "(?m)^> \*\*${Label}:\*\*\s*(.*?)\s*$")
    if ($match.Success) { return $match.Groups[1].Value }
    return ''
}

function Get-AdrIds {
    param([string]$Value)

    $ids = foreach ($match in [regex]::Matches($Value, '(?i)adr-(\d{3})')) { 'ADR-' + $match.Groups[1].Value }
    return ,@($ids | Sort-Object -Unique)
}

$adrs = @{}
$englishFiles = Get-ChildItem -Path $decisionsPath -Filter 'adr-*.md' -File | Where-Object { $_.Name -notmatch '-fr\.md$' }
foreach ($file in $englishFiles) {
    if ($file.Name -notmatch '^adr-(\d{3})-') {
        $issues += "BAD FILENAME: technical/decisions/$($file.Name) must start with adr-NNN-"
        continue
    }
    $id = 'ADR-' + $Matches[1]
    $text = [System.IO.File]::ReadAllText($file.FullName)
    $adrs[$id] = [PSCustomObject]@{
        Id = $id
        File = "technical/decisions/$($file.Name)"
        Status = Get-Field -Text $text -Label 'Decision status'
        Date = Get-Field -Text $text -Label 'Decision date'
        Owner = Get-Field -Text $text -Label 'Decision owner'
        Supersedes = Get-AdrIds (Get-Field -Text $text -Label 'Supersedes')
        SupersededBy = Get-AdrIds (Get-Field -Text $text -Label 'Superseded by')
    }
}

foreach ($adr in $adrs.Values) {
    if ([string]::IsNullOrWhiteSpace($adr.Status)) {
        $issues += "MISSING DECISION STATUS: $($adr.File)"
        continue
    }
    if ($validStatuses -notcontains $adr.Status) {
        $issues += "INVALID DECISION STATUS: $($adr.File) has '$($adr.Status)'; valid values are $($validStatuses -join ', ')"
        continue
    }

    if ($decidedStatuses -contains $adr.Status) {
        if ($adr.Date -notmatch '^\d{4}-\d{2}-\d{2}$') {
            $issues += "MISSING DECISION DATE: $($adr.File) is $($adr.Status) but Decision date is '$($adr.Date)' (expected YYYY-MM-DD)"
        }
        if ([string]::IsNullOrWhiteSpace($adr.Owner) -or $adr.Owner -match '(?i)<|to confirm') {
            $issues += "MISSING DECISION OWNER: $($adr.File) is $($adr.Status) but Decision owner is '$($adr.Owner)'"
        }
    }

    if ($adr.Status -eq 'Superseded' -and $adr.SupersededBy.Count -eq 0) {
        $issues += "BROKEN CHAIN: $($adr.File) is Superseded but 'Superseded by' names no ADR"
    }
    if ($adr.Status -ne 'Superseded' -and $adr.SupersededBy.Count -gt 0) {
        $issues += "BROKEN CHAIN: $($adr.File) names 'Superseded by' $($adr.SupersededBy -join ', ') but its status is $($adr.Status)"
    }

    foreach ($replacementId in $adr.SupersededBy) {
        if ($replacementId -eq $adr.Id) {
            $issues += "BROKEN CHAIN: $($adr.File) supersedes itself"
            continue
        }
        $replacement = $adrs[$replacementId]
        if ($null -eq $replacement) {
            $issues += "BROKEN CHAIN: $($adr.File) is superseded by $replacementId, which does not exist"
            continue
        }
        if ($replacement.Supersedes -notcontains $adr.Id) {
            $issues += "MISSING RECIPROCAL LINK: $($replacement.File) must list $($adr.Id) under 'Supersedes'"
        }
        if ($decidedStatuses -notcontains $replacement.Status) {
            $issues += "BROKEN CHAIN: $($adr.File) is superseded by $replacementId, which is $($replacement.Status), not Accepted"
        }
    }

    foreach ($previousId in $adr.Supersedes) {
        $previous = $adrs[$previousId]
        if ($null -eq $previous) {
            $issues += "BROKEN CHAIN: $($adr.File) supersedes $previousId, which does not exist"
            continue
        }
        # A Proposed replacement does not yet supersede anything.
        if ($decidedStatuses -contains $adr.Status) {
            if ($previous.Status -ne 'Superseded' -or $previous.SupersededBy -notcontains $adr.Id) {
                $issues += "MISSING RECIPROCAL LINK: $($previous.File) must be Superseded with 'Superseded by' $($adr.Id)"
            }
        }
    }
}

foreach ($start in $adrs.Values) {
    $visited = @($start.Id)
    $current = $start
    while ($current.SupersededBy.Count -gt 0) {
        $nextId = $current.SupersededBy[0]
        if ($visited -contains $nextId) {
            $issues += "SUPERSESSION CYCLE: $($visited -join ' -> ') -> $nextId"
            break
        }
        $visited += $nextId
        $current = $adrs[$nextId]
        if ($null -eq $current) { break }
    }
}

$issues = @($issues | Sort-Object -Unique)
if ($issues.Count -eq 0) {
    Write-Output "OK: $($adrs.Count) ADR(s) checked; statuses, owners, dates, and supersession links are consistent."
} else {
    Write-Output "FOUND $($issues.Count) ADR chain issue(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
    exit 1
}
