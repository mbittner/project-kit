<#
.SYNOPSIS
Status gate check. Finds documents whose header status says "Approved"/
"Approuve" (or, for architecture artifacts, an Accepted ADR or a
Recommended/Closed assessment) but that don't actually satisfy the promotion criteria:
unchecked checklist items, unresolved [NEEDS CLARIFICATION] markers,
unresolved (Open/Ouverte) Open Questions Log entries, or a
missing/insufficient "Last validated" evidence line recording the
quality score that earned the Approved status. Architecture scores are advisory,
so technical/ documents have no score threshold.
#>

$RepoRoot = Resolve-Path "$PSScriptRoot/../../../.."
$mdFiles = Get-ChildItem -Path $RepoRoot -Recurse -Filter '*.md' -File | Where-Object {
    $_.FullName -notmatch '\\templates\\' -and $_.FullName -notmatch '\\\.github\\'
}
$issues = @()

# Top-tier readiness threshold per artifact folder (from each skill's Quality Scoring Model).
$thresholds = @{
    'initiative'        = 85
    'epics'             = 90
    'features'          = 90
    'stories'           = 90
    'change-management' = 90
}

foreach ($file in $mdFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName)
    $gated = $false
    $status = $null
    if ($content -match '(?im)^\>\s*\*\*(Document status|Statut du document)\s*:\*\*\s*(.+)$') {
        $status = $Matches[2]
        $gated = $status -match '(?i)approved|approuv'
    } elseif ($content -match "(?im)^\>\s*\*\*(Decision status|Assessment status|Statut de la d.cision|Statut de l'.valuation)\s*:\*\*\s*(.+)$") {
        $status = $Matches[2]
        $gated = $status -match '(?i)accept|recommend|recommand|closed|cl.tur'
    }
    if ($gated) {
        $rel = $file.FullName.Substring($RepoRoot.Path.Length + 1)

        $uncheckedCount = ([regex]::Matches($content, '(?m)^- \[ \]')).Count
        if ($uncheckedCount -gt 0) {
            $issues += "$rel : status '$($status.Trim())' but $uncheckedCount unchecked checklist item(s)"
        }

        $clarificationCount = ([regex]::Matches($content, '\[NEEDS CLARIFICATION')).Count
        if ($clarificationCount -gt 0) {
            $issues += "$rel : status '$($status.Trim())' but $clarificationCount unresolved [NEEDS CLARIFICATION] marker(s)"
        }

        $openQuestionCount = ([regex]::Matches($content, '(?im)^\|.*\|\s*(Open|Ouverte)\s*\|\s*$')).Count
        if ($openQuestionCount -gt 0) {
            $issues += "$rel : status '$($status.Trim())' but $openQuestionCount unresolved Open Questions Log entr(y/ies)"
        }

        $topFolder = ($rel -split '[\\/]')[0]
        $threshold = $thresholds[$topFolder]
        if ($threshold) {
            if ($content -match '(?im)Last validated.*?Score\s*:?\s*(\d+)\s*/\s*100') {
                $score = [int]$Matches[1]
                if ($score -lt $threshold) {
                    $issues += "$rel : status '$($status.Trim())' but recorded score $score/100 is below the $threshold/100 readiness threshold for this artifact type"
                }
            } else {
                $issues += "$rel : status '$($status.Trim())' but no 'Last validated ... Score NN/100' evidence line found - run the matching /validate-* prompt and record the result before approving"
            }
        }
    }
}

if ($issues.Count -eq 0) {
    Write-Output "OK: every Approved document satisfies the status gate (checklist complete, no open clarification markers or open questions, recorded score meets threshold)."
} else {
    Write-Output "FOUND $($issues.Count) issue(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
}
