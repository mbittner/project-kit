# Release Notes — Solution Architect Toolkit

**Date/time:** 2026-09-27 16:19:24 UTC

## Summary

Solution Architects now have dedicated tooling organized like the business-requirements side: templates, practice guidance, assistants, commands, and integrity checks for Architecture Assessments, Architecture Decision Records (ADRs), and Solution Designs. The Solution Architect Guide was rewritten as a bilingual, role-focused guide.

## Business Changes

- Epic and Feature templates (EN/FR) gained an `Architecture references` / `Références d'architecture` header line, initialized to `None` / `Aucune`, used only for backlinks to architecture documents.
- The Epic and Feature guidance notes that architecture decisions belong in `technical/` and that the backlink is not a scoring criterion.
- The BA Requirements Writer flags architecture triggers and suggests `/screen-architecture`; the Lifecycle Navigator uses the new screening rules.

## Technical Changes

- New `technical/` folder with a bilingual architecture index (assessments, decision log, designs).
- New bilingual templates: `arch-assessment-template`, `adr-template`, `solution-design-template`.
- New guidance: `architecture-assessment-documentation`, `adr-documentation`, `solution-design-documentation`, `architecture-screening`, `architecture-decision-consistency`, `architecture-traceability-validation`.
- New assistants: Solution Architecture Writer and Solution Architecture Reviewer (read-only).
- New commands: `/screen-architecture`, `/record-decision`, `/supersede-decision`, `/design-solution`. `/validate` accepts `assessment`, `adr`, and `design`; `/audit-pack` adds an architecture coverage section; `/share-my-work` runs the new checks.
- New scripts: `check-adr-chain.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`. Extended `check-ids.ps1`, `check-parity.ps1`, `check-document-headers.ps1`, `check-checklists.ps1`, and `generate-documentation-register.ps1` for architecture artifacts. Solution Designs now appear in the documentation registers.
- Rules: only the Solution Architect accepts ADRs, recommends assessments, or approves designs; architecture scores are advisory and never block status; accepted ADRs are superseded rather than edited.

## Documentation Updates

- Tool capability contracts: new Architecture Decisions section. Copilot interface and solution architecture maps updated.
- Solution Architect Guide moved from `docs/technical/` to `docs/architecture/`, trimmed of content duplicated in the guidance files, and given a French version, a worked example, and a "What Still Needs Your Judgment" section.
- Both READMEs, business user guides, cheat sheets, documentation registers, and repository instructions updated.
- Ideas Register: `IDEA-002` recorded and marked implemented.
- System Register: no project systems referenced; no register update needed.

## Validation

- `check-parity.ps1`
- `check-ids.ps1` (no artifact files present)
- `check-links.ps1`
- `check-checklists.ps1`
- `check-document-headers.ps1`
- `check-toc-coverage.ps1`
- `check-adr-chain.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1` (no architecture artifacts yet; detection verified against temporary sample documents outside the workspace)
