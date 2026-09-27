# Release Notes — System Register Relocation

**Date/time:** 2026-09-27 07:51:47 UTC

## Summary

Moved the bilingual System Register to the repository root and made it discoverable alongside the other central registers.

## Changes

- Relocated the English and French System Register to the root; no systems or inventory data were added.
- Added both language versions to the root TOCs and updated README, Solution Architect guide, repository instructions, and validation guidance links.
- Extended root EN/FR parity coverage and clarified the System Register exception in TOC coverage guidance.
- Consolidated duplicated System Register validation guidance. Preserved the policy that Hopex is optional and missing owner or CMCD details become open questions without blocking technical documentation.

## Validation

- `check-parity.ps1`
- `check-links.ps1`
- `check-toc-coverage.ps1`
- `check-document-headers.ps1`
- `check-ids.ps1` (no artifact files present)
- `check-checklists.ps1`
- `check-stakeholders.ps1` (no artifact files scanned)
