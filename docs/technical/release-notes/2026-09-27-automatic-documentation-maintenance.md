# Release Notes — Automatic Documentation Maintenance

**Date/time:** 2026-09-27 05:47:32 UTC

## Summary

`/save-my-work` and `/share-my-work` now maintain relevant business and technical documentation as part of their normal workflows. Users do not need to request documentation updates separately.

## Automatic Documentation Updates

- Added a shared policy to classify source changes as business, technical, or cross-cutting and update only the corresponding documentation.
- Business changes retain their artifact as the source of truth and refresh related stakeholder, contents, cross-link, and status-register material when applicable.
- Technical and tooling changes update the solution architecture or affected technical specifications; user-facing workflow changes update the bilingual business-user guides.
- Save creates one dated release note for substantive source changes and includes documentation updates and the note in its human-readable summary.
- Share reuses the pending note, includes additional incoming changes without duplicating the note, and runs the integrity checks before asking for confirmation to publish.
- After confirmation, share records only the intended changes, publishes them to the configured remote and shared branch, and verifies success. Failures are reported without discarding local work or claiming the changes were shared.
- Generated documentation and release-note-only edits do not recursively trigger another release note.

## Supporting Documentation

- Updated the version-history policy, save/share workflows, and solution architecture overview.
- Updated the English and French business-user guides and README release-note links.

## Validation

- `check-parity.ps1`
- `check-links.ps1`
- `check-toc-coverage.ps1`
- `check-document-headers.ps1`
- `check-ids.ps1`
- `check-checklists.ps1`
- `check-stakeholders.ps1`