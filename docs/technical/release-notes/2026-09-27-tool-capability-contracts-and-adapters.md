# Release Notes — Tool Capability Contracts and Adapters

*Date: 2026-09-27*

## Summary

Separated the work-management behavior of the requirements pack from its current Copilot interface and GitHub-backed storage implementation. This is a documented architecture boundary, not a runtime plugin system.

## Capability Contract

- Added a provider-neutral contract for save, share, retrieve-latest, history, undo, baseline versioning, conflict handling, and automatic documentation maintenance.
- Made the contract the source of user-visible outcomes, confirmations, and failure guarantees. Business artifact quality models remain with their domain practice guidance.

## Implementation Adapters

- Documented local history and the configured GitHub-hosted shared copy as the current version-control implementation.
- Documented Copilot Chat custom assistants, guidance, and commands as one interface implementation that delegates to the contract and storage adapter.
- Refactored version-history guidance and the writer configuration to reference the contract and adapter instead of embedding Azure DevOps behavior.
- Added repository instructions to preserve this boundary in future changes and synchronized English/French user-facing documentation.

## Validation

- `check-parity.ps1`
- `check-links.ps1`
- `check-toc-coverage.ps1`
- `check-document-headers.ps1`
- `check-ids.ps1`
- `check-checklists.ps1`
- `check-stakeholders.ps1`