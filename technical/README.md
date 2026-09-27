# Architecture Documentation Index

*[Lire ce document en français](README-fr.md)*

This folder holds the project's architecture work: assessments, architecture decision records (ADRs), and solution designs. Business requirements remain the source of truth for outcomes, users, and scope; every document here links back to at least one Initiative, Epic, or Feature. Systems are cited by their [System Register](../system-register.md) ID.

## How This Folder Is Organized

| Folder | Artifact | ID | Template |
|---|---|---|---|
| `assessments/` | Architecture Assessment — compares options for one decision question | `ARCH-XXX` | [EN](../templates/arch-assessment-template.md) / [FR](../templates/arch-assessment-template-fr.md) |
| `decisions/` | Architecture Decision Record — records one consequential decision | `ADR-XXX` | [EN](../templates/adr-template.md) / [FR](../templates/adr-template-fr.md) |
| `designs/` | Solution Design — just enough design to build, test, deploy, and operate | `SD-XXX` | [EN](../templates/solution-design-template.md) / [FR](../templates/solution-design-template-fr.md) |

Every document ships as an English/French pair. Solution Designs also appear in the [Documentation Status Register](../documentation-register.md) with their approved baseline version.

## Assessments

No assessments recorded yet.

| ID | Title | Status | Linked business artifacts | Resulting decision |
|---|---|---|---|---|

## Decision Log

No decisions recorded yet.

| ID | Title | Status | Decision date | Supersedes | Superseded by |
|---|---|---|---|---|---|

## Solution Designs

No solution designs recorded yet.

| ID | Title | Status | Version | Governing decisions |
|---|---|---|---|---|

## Keeping This Index Current

- Add a row whenever an assessment, ADR, or design is created, and update its status when it changes. Keep the French index aligned.
- Never delete or renumber an entry. Superseded, deprecated, rejected, and closed items stay listed for traceability.
- An Accepted ADR is changed only by superseding it with a new ADR; both rows then show the relationship.
