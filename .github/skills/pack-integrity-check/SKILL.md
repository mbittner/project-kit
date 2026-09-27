---
name: pack-integrity-check
description: "Use for deterministic, script-based repository health checks across the whole Modern BA Practice Markdown Pack — EN/FR structural parity, ID gaps/duplicates, broken relative links, possible unregistered stakeholders, and the Approved-status gate (unchecked checklist items, unresolved clarification markers, unresolved Open Questions Log entries, missing or below-threshold recorded quality score) on documents whose header status says Approved. These are mechanical checks a script can verify exactly, complementing the judgment-based guardrails in initiative-documentation, epic-documentation, and feature-documentation. Trigger phrases: check links, check EN/FR parity, audit the pack, validate all documents, are there broken links, check ID gaps, repo health check, run integrity checks, can this be marked approved, status gate, unregistered stakeholder."
---

# Pack Integrity Check

Seven PowerShell checks and one register generator that catch omissions and inconsistencies across the pack. Run them from the repo root with `powershell -File <script>` (no arguments needed — they resolve the repo root relative to their own location).

| Script | Checks |
|--------|--------|
| [scripts/check-parity.ps1](./scripts/check-parity.ps1) | Every EN doc under `initiative/`, `epics/`, `features/`, `stories/`, `change-management/` (plus root-level README, table of contents, stakeholder register, documentation register, and System Register) has an FR counterpart (and vice versa), and both have the same number of `##` headings |
| [scripts/check-ids.ps1](./scripts/check-ids.ps1) | `INIT-XXX`, `EPIC-XXX`, `FEAT-XXX`, `STORY-XXX`, `CM-EPIC-XXX`, `CM-FEAT-XXX` filenames have no duplicate or gapped numbers, and reports the next free ID per prefix |
| [scripts/check-links.ps1](./scripts/check-links.ps1) | Every relative markdown link (`[text](path)`) in the repo resolves to a real file |
| [scripts/check-checklists.ps1](./scripts/check-checklists.ps1) | **Status gate.** Any document whose header status says "Approved"/"Approuvé" must have: zero unchecked (`- [ ]`) checklist items, zero unresolved `[NEEDS CLARIFICATION]` markers, zero entries still marked Open/Ouverte in an Open Questions Log, and a `> **Last validated:** ... Score NN/100` evidence line whose score meets that artifact type's top Readiness Threshold (85 for initiatives, 90 for epics and features) |
| [scripts/check-stakeholders.ps1](./scripts/check-stakeholders.ps1) | **Advisory only, never blocking.** Scans Stakeholders/Users/Personas/Impacted Stakeholder Groups/Who Is Affected sections across the pack and flags any named stakeholder that doesn't appear anywhere in [stakeholder-register.md](../../../stakeholder-register.md) as a possible unregistered stakeholder — a warning to register them or log the gap, per [stakeholder-register-validation](../stakeholder-register-validation/SKILL.md) |
| [scripts/check-toc-coverage.ps1](./scripts/check-toc-coverage.ps1) | Every business-facing Markdown document outside excluded technical/template folders appears in the matching EN or FR table of contents; technical notes, release notes, and templates are excluded, while the root-level System Register is listed under Registers |
| [scripts/check-document-headers.ps1](./scripts/check-document-headers.ps1) | EN/FR document status and baseline versions match; version labels, adjacency, and hard line breaks follow the header convention |
| [scripts/generate-documentation-register.ps1](./scripts/generate-documentation-register.ps1) | **Generator, not a check.** Rebuilds the register's portfolio counts and approved-baseline table from paired document headers; leaves the manually maintained Active Work section untouched |

## Status Gate Model

This pack uses a three-state document status: **Draft → In Review → Approved** (existing illustrative content uses "Illustrative working draft" as its Draft equivalent). Promoting a document to **Approved** is a hard gate, not a label anyone can type:

1. Run the matching `/validate initiative <id>`, `/validate epic <id>`, `/validate feature <id>`, `/validate cm-epic <id>`, or `/validate cm-feature <id>` command (or the equivalent skill workflow) and confirm the score is at or above that artifact type's top Readiness Threshold tier.
2. Confirm every Approval/Readiness checklist item in the document is checked.
3. Confirm zero `[NEEDS CLARIFICATION]` markers remain (cap is 5 per document during drafting; zero once Approved), and zero entries in the Open Questions Log (if present) are still marked Open/Ouverte.
4. Only then set `> **Document status:** Approved` **and** replace the template header's `Not recorded` value with `> **Last validated:** <date> — Score <NN>/100 (<Rating>)`. If an existing document has no `Last validated` field, add the evidence line when approving, so `check-checklists.ps1` can re-verify the claim later without re-running the full judgment-based review.

Never set a document's status to Approved on request alone — walk through steps 1–3 first, and refuse (explain why) if any of them fail.

## When to Use

- Before telling a user an artifact (or the whole pack) is ready for governance approval.
- As the last step of `/validate <type> <id>` (ID integrity and EN/FR parity, which that prompt references).
- Whenever a new `INIT-XXX`/`EPIC-XXX`/`FEAT-XXX`/`CM-XXX` file is created, to confirm the ID was actually free and both language files exist.
- Periodically, or when asked to "audit the pack" / "check for broken links" / "check parity" generally, across the whole repo rather than one document.

## How to Run

Run each script with `run_in_terminal` (PowerShell). They print `OK: ...` when a check passes, or a list of specific issues (file, line, and problem) when it doesn't. Report the raw findings back to the user — do not silently "fix" anything the script flags without asking, since some findings (e.g., a genuinely new document that hasn't gotten its FR pair yet) may be expected work-in-progress rather than an error.

```powershell
powershell -File .github/skills/pack-integrity-check/scripts/check-parity.ps1
powershell -File .github/skills/pack-integrity-check/scripts/check-ids.ps1
powershell -File .github/skills/pack-integrity-check/scripts/check-links.ps1
powershell -File .github/skills/pack-integrity-check/scripts/check-checklists.ps1
powershell -File .github/skills/pack-integrity-check/scripts/check-stakeholders.ps1
powershell -File .github/skills/pack-integrity-check/scripts/check-toc-coverage.ps1
powershell -File .github/skills/pack-integrity-check/scripts/check-document-headers.ps1
```

Run `generate-documentation-register.ps1` after changing document status or baseline version, or after editing Active Work details, to refresh the generated snapshot without overwriting the manual work list.

## What This Does Not Replace

These scripts only catch mechanical problems. They do **not** replace the qualitative guardrails in [initiative-documentation](../initiative-documentation/SKILL.md), [epic-documentation](../epic-documentation/SKILL.md), [feature-documentation](../feature-documentation/SKILL.md), or [sibling-overlap-validation](../sibling-overlap-validation/SKILL.md) — no-solutioning, vague-outcome detection, scope overlap, and completeness checks still require judgment and must still be run separately.
