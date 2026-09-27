<#
.SYNOPSIS
Checks System Register references: the English and French registers list the
same system IDs; every SYS-NNN cited under architecture/ is registered; and each
architecture artifact citing a system appears in the matching register's
Technical References table.
#>

$RepoRoot = (Resolve-Path "$PSScriptRoot/../../../..").Path
$registers = @(
    [PSCustomObject]@{ Language = 'EN'; File = 'system-register.md'; Systems = '(?ms)^## Systems\s*$(.*?)(?=^## |\z)'; References = '(?ms)^## Technical References\s*$(.*?)(?=^## |\z)' },
    [PSCustomObject]@{ Language = 'FR'; File = 'system-register-fr.md'; Systems = '(?ms)^## Syst.mes\s*$(.*?)(?=^## |\z)'; References = '(?ms)^## R.f.rences techniques\s*$(.*?)(?=^## |\z)' }
)
$issues = @()
$registered = @{}
$referenceRows = @{}

foreach ($register in $registers) {
    $path = Join-Path $RepoRoot $register.File
    if (-not (Test-Path $path)) {
        $issues += "MISSING REGISTER: $($register.File)"
        $registered[$register.Language] = @()
        $referenceRows[$register.Language] = @()
        continue
    }
    $text = [System.IO.File]::ReadAllText($path)
    $systemsSection = [regex]::Match($text, $register.Systems).Groups[1].Value
    $registered[$register.Language] = @([regex]::Matches($systemsSection, '(?m)^\|\s*(SYS-\d{3})\s*\|') | ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique)
    $referencesSection = [regex]::Match($text, $register.References).Groups[1].Value
    $referenceRows[$register.Language] = @([regex]::Matches($referencesSection, '(?m)^\|\s*SYS-\d{3}\s*\|.*$') | ForEach-Object { $_.Value })
}

foreach ($id in $registered['EN']) {
    if ($registered['FR'] -notcontains $id) { $issues += "REGISTER MISMATCH: $id is in system-register.md but not system-register-fr.md" }
}
foreach ($id in $registered['FR']) {
    if ($registered['EN'] -notcontains $id) { $issues += "REGISTER MISMATCH: $id is in system-register-fr.md but not system-register.md" }
}

$technicalPath = Join-Path $RepoRoot 'technical'
$citations = 0
if (Test-Path $technicalPath) {
    foreach ($file in Get-ChildItem -Path $technicalPath -Filter '*.md' -File -Recurse) {
        $relative = $file.FullName.Substring($RepoRoot.Length + 1).Replace('\', '/')
        $language = if ($file.Name -match '-fr\.md$') { 'FR' } else { 'EN' }
        $registerName = if ($language -eq 'FR') { 'system-register-fr.md' } else { 'system-register.md' }
        $isArtifact = $relative -match '^architecture/(assessments|decisions|designs)/'
        $ids = @([regex]::Matches([System.IO.File]::ReadAllText($file.FullName), 'SYS-\d{3}') | ForEach-Object { $_.Value } | Sort-Object -Unique)

        foreach ($id in $ids) {
            $citations++
            if ($registered[$language] -notcontains $id) {
                $issues += "UNREGISTERED SYSTEM: $relative cites $id, which is not in $registerName"
                continue
            }
            if ($isArtifact) {
                $listed = $referenceRows[$language] | Where-Object { $_ -match "^\|\s*$id\s*\|" -and $_.Contains($file.Name) }
                if (-not $listed) {
                    $issues += "MISSING TECHNICAL REFERENCE: $registerName has no Technical References row linking $id to $relative"
                }
            }
        }
    }
}

if ($issues.Count -eq 0) {
    Write-Output "OK: $($registered['EN'].Count) registered system(s); $citations system citation(s) under architecture/ are registered and referenced."
} else {
    Write-Output "FOUND $($issues.Count) system reference issue(s):"
    $issues | ForEach-Object { Write-Output " - $_" }
    exit 1
}
