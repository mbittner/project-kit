# Release Notes — Documentation Governance and Epic Workflows

*Date: 2026-09-26*

## Summary

This update builds on the BA requirements authoring and guardrails introduced in the [2026-09-25 release note](2026-09-25-ba-agent-skills-and-guardrails.md). It adds clearer stakeholder ownership, approved-baseline versioning, portfolio status visibility, broader integrity checks, a business-user walkthrough, and automatic freshness checks during Epic creation.

## Stakeholder Register

- Reorganized impacted stakeholders into a compact summary and detailed, directly linked group profiles in English and French.
- Added Manager and Subject Matter Expert (SME) representative fields for each impacted group.
- Updated stakeholder guidance to ask for missing representatives and record unresolved contacts in the affected group's Open Questions section instead of guessing.

## Baseline Versioning and Status Register

- Added `Document version` / `Version du document` metadata to requirement documents and templates. French labels and rendered header line breaks are consistent across the artifact set.
- Established baseline rules: first approval is `1.0`; editorial-only changes do not increment; qualifying requirement changes use minor versions; material scope or outcome changes use major versions.
- Updated `/validate` to recommend a version with rationale and require explicit user confirmation before approval or version changes. When requested, an eligible proposal can be recorded in a separate Pending Baseline Proposal section; the approved version remains unchanged while the proposal is pending.
- Added bilingual documentation-status registers. Their portfolio counts and approved-baseline lists are generated from document headers; the Active Work section remains manually maintained.

## Integrity Checks and Contents

- Added `check-toc-coverage.ps1` to verify business-facing documents are listed in the matching language table of contents, excluding technical guides, templates, and release notes.
- Added `check-document-headers.ps1` to verify paired status/version values, French labels, and header rendering.
- Added `generate-documentation-register.ps1` to refresh status totals and approved-baseline listings without overwriting Active Work notes.
- Updated both tables of contents with stakeholder and documentation-status register links, and strengthened workspace instructions so future business documents are indexed in both languages while technical documentation stays out.
- Updated `/validate` and `/audit-pack` to use the expanded integrity-check set.

## Business User Guidance

Created paired [English](../../business/business-user-guide.md) and [French](../../business/business-user-guide-fr.md) guides explaining the assistant's capabilities and value to Product Managers and Product Owners. The guides include an Epic workflow from the initial prompt through stakeholder checks, decomposition, validation, approval, saving, and sharing.

## Epic Creation Freshness

- Direct Epic creation now automatically retrieves teammates' latest updates before reading the initiative portfolio or assigning an ID; users do not need to call `/get-latest` manually for this flow.
- `/decompose-initiative` retrieves updates before proposing epics and again after the user confirms the candidate set, before assigning IDs. If new information changes the proposal, it is revised and reconfirmed.
- Unsaved edits and conflicts are surfaced before creation; if the update cannot be retrieved, the workflow explains the limitation rather than claiming the workspace is current.
