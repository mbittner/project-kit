# Release Notes — BA Requirements Writer Agent & Skills

**Date/time:** 2026-09-25 20:52:57 UTC

## Summary

The `BA Requirements Writer` agent was restructured from a single set of instructions into an agent + skills + prompts architecture, inspired by [spec-kit](https://github.com/github/spec-kit)-style spec-driven development. Every artifact type in the Modern BA Practice Markdown Pack (Initiative, Epic, Feature, Change Management brief) now has a dedicated skill with guardrails, an AI-generation policy, a quality scoring model, and a governed approval gate. Deterministic scripts back the mechanical parts of those guardrails, and slash-command prompts expose validation, decomposition, and portfolio auditing directly in chat.

## New Skills (`.github/skills/`)

| Skill | Purpose |
|---|---|
| `initiative-documentation` | What makes a good Initiative; mandatory sections; 4 guardrails (No Solutions, No Fabricated Content, Structural Consistency, Repository Mechanics); AI-generation rules; quality scoring (Investment Ready threshold: 85+). |
| `epic-documentation` | What makes a good Epic; mandatory sections; 5 guardrails (No Solutioning, Correct Altitude, Mandatory Completeness, Linkage/Accountability, No Overlap With Sibling Epics); quality scoring (Ready for Feature Discovery: 90+). |
| `feature-documentation` | What makes a good Feature; mandatory sections including Feature-Level Acceptance Criteria (a gap vs. the prior template); 6 guardrails (adds No Unnecessary Solution Prescription and No Overlap With Sibling Features); quality scoring (Story-ready: 90+). |
| `change-management-documentation` | New artifact skill for `CM-EPIC-XXX` / `CM-FEAT-XXX` briefs — before/after state, stakeholder impact, adoption metrics, training/communication/documentation, and the "Golden Review Question" (would users know what to do differently on Monday morning?); 5 guardrails; two scorecards (epic-level and feature-level). |
| `sibling-overlap-validation` | Shared procedure used by the epic and feature skills to detect scope/capability/behavior overlap between siblings under the same parent, with a merge-or-cross-reference resolution step. |
| `pack-integrity-check` | Four PowerShell scripts providing deterministic, repo-wide backstops (see below) — the mechanical counterpart to the judgment-based guardrails in the artifact skills. |

All four artifact types (Initiative, Epic, Feature, Change Management) now follow the same shape: What It Is → Where It Lives → Workflow → Mandatory Sections → Guardrails → AI Generation → Do's/Don'ts → Quality Scoring → Approval Checklist → Litmus/Review Question → Status Gate.

## New Templates (`templates/`)

Previously only Change Management templates existed. Added blank, bracketed-placeholder templates (EN/FR pairs) for the other three artifact types:
- `initiative-template.md` / `-fr.md`
- `epic-template.md` / `-fr.md`
- `feature-template.md` / `-fr.md`

Existing `cm-epic-template.md` / `cm-feature-template.md` (and FR pairs) were updated with the new Status Gate header line and an Open Questions Log section.

## New Prompts (`.github/prompts/`)

| Prompt | Purpose |
|---|---|
| `/validate-initiative`, `/validate-epic`, `/validate-feature`, `/validate-cm-epic`, `/validate-cm-feature` | Run the matching skill's full Guardrails + Quality Scoring Model + Approval Checklist against an existing artifact by ID, plus a Status Gate verdict. Read-only unless the user asks for the status to be updated. |
| `/decompose-initiative`, `/decompose-epic` | Propose a full, non-overlapping set of candidate children (epics for an initiative, features for an epic) and run the sibling-overlap check across the *entire proposed set* before any file is created — shifts overlap detection to design time instead of after-the-fact review. |
| `/audit-pack` | Portfolio-wide health audit: pack-integrity-check scripts, per-artifact guardrail/quality-score validation, an exhaustive sibling-overlap sweep, and a KPI traceability rollup (do epic outcomes map to initiative outcomes, do feature KPIs map to epic KPIs). Scoped to one initiative and its descendants, or the whole pack. |

## Deterministic Guardrail Backstops (`pack-integrity-check/scripts/`)

Four PowerShell scripts, since prose guardrails are advisory and can be skipped under time pressure:
- `check-parity.ps1` — every EN document has an FR counterpart with a matching heading count.
- `check-ids.ps1` — no duplicate/gapped `INIT-`, `EPIC-`, `FEAT-`, `CM-EPIC-`, `CM-FEAT-` numbers; reports the next free ID per prefix.
- `check-links.ps1` — every relative markdown link resolves to a real file (skips code spans and template placeholders).
- `check-checklists.ps1` — **the Status Gate enforcement script** (see below).

## Status Gate (Draft → In Review → Approved)

A document can no longer be marked "Approved" on request alone. Each artifact skill's Status Gate section requires, before approving:
1. A quality score at or above the artifact type's top Readiness Threshold (85 for initiatives; 90 for epics, features, and CM briefs), via the matching `/validate-*` prompt.
2. Every Approval/Readiness Checklist item checked.
3. Zero remaining `[NEEDS CLARIFICATION]` markers, and zero items still marked Open in the Open Questions Log.

Only then does the header get `> **Document status:** Approved` plus a `> **Last validated:** <date> — Score <NN>/100 (<Rating>)` evidence line, which `check-checklists.ps1` can re-verify mechanically at any later audit — including catching a false/stale "Approved" claim.

## Clarification Marker Policy

- Cap raised from 3 to 5 `[NEEDS CLARIFICATION]` markers per document, prioritized by artifact-specific rules (e.g., for initiatives: scope boundary > risk/compliance > business value > governance detail).
- **New: Open Questions Log.** Unresolved items beyond the top 5 no longer get silently downgraded into the Assumptions section. They're now logged in a dedicated, conditional Open Questions Log table (Question | Why It Matters | Decision Needed By | Suggested Owner | Status), preserving visibility that a low-confidence open question is different from a confident default assumption.

## Repository Restructuring

- Renamed `feature-canvases/` → `features/` across the entire repo (181 link references updated across 63 files); the `feat-XXX` filename/ID convention is unchanged.
- All README, agent, skill, prompt, and template cross-links were updated and re-verified with `check-links.ps1`.

## Agent File Changes (`.github/agents/ba-requirements-writer.agent.md`)

- Added a Skills table pointing to all six skills.
- Added `execute` to the agent's tool list (required to run the pack-integrity-check scripts).
- Documented the Status Gate, the slash-command validation/decomposition/audit prompts, and updated repository conventions (folder rename, template locations).
