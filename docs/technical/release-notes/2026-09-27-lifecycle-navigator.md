# Release Notes — Lifecycle Navigator

*Date: 2026-09-27*

## Summary

Added a read-only Lifecycle Navigator to help Product Managers, Product Owners, Business Analysts, Solution Architects, and delivery roles decide what to do next based on workspace evidence.

## Behavior and Boundaries

- Added provider-neutral next-step guidance for Problem and Outcomes, Options and Decisions, and Delivery and Operation.
- The Navigator returns one recommended action with evidence, the role best placed to act, and observable completion criteria. It may recommend continuing, clarifying, testing an assumption, involving a specialist, deciding, deferring, or stopping.
- Added explicit evidence-based criteria for recommending Solution Architect involvement; architecture review is not a default gate for every Feature.
- Implemented the Navigator as a read/search-only custom agent. The BA Requirements Writer may delegate next-step questions to it; it cannot edit, approve, or make business/architecture decisions.
- Added no slash command, new artifact type, or document template.

## Supporting Documentation

- Updated the bilingual README and Business User Guide, Copilot interface map, solution architecture, and capability contract.

## Validation

- `check-parity.ps1`
- `check-links.ps1`
- `check-toc-coverage.ps1`
- `check-document-headers.ps1`
- `check-ids.ps1`
- `check-checklists.ps1`
- `check-stakeholders.ps1`