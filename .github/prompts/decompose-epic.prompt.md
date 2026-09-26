---
description: "Propose a coherent, non-overlapping set of candidate Features for an approved Epic before creating any files — runs the sibling-overlap check across the whole proposed set (plus any existing features) at design time, instead of catching overlap after two features already exist. Presents candidates for confirmation; does not create files until approved."
name: "Decompose Epic Into Features"
argument-hint: "Epic number or ID, e.g. 001 or EPIC-003"
agent: "agent"
tools: [read, edit, search, execute]
---
Propose candidate features for the epic identified by `${input}` (accepts a bare number like `001` or a full ID like `EPIC-003`).

## Steps

1. Load the [epic-documentation](../skills/epic-documentation/SKILL.md), [feature-documentation](../skills/feature-documentation/SKILL.md), and [sibling-overlap-validation](../skills/sibling-overlap-validation/SKILL.md) skills in full before proposing anything.
2. Resolve the target file in `epics/` matching `epic-<zero-padded number>-*.md`. If no match is found, list the existing epic IDs and ask the user which one to decompose.
3. Read the epic's Business Outcome, Scope (In Scope list), and existing Features table (if it already lists features).
4. Draft a candidate set of features that collectively covers every In Scope item with no gaps, where:
   - Each candidate has a Feature Statement ("Enable [beneficiary] to [action] so that [benefit]" — not a solution, see feature-documentation Guardrail 1), the specific In Scope item(s) it covers, a best-guess primary beneficiary, and a one-line rationale.
   - Features already listed in the Features table are treated as fixed siblings, not re-proposed.
5. Before presenting the set, run the [sibling-overlap-validation](../skills/sibling-overlap-validation/SKILL.md) procedure across the **full sibling set** (existing features + all newly proposed candidates) — no two feature statements, in-scope items, or acceptance-criterion behaviors may overlap. Revise the candidate set until this passes; do not present a set that still has an overlap.
6. Present the candidate set as a table (Feature Statement | Covers | Primary Beneficiary | Rationale) and explicitly flag any In Scope item from the epic that no candidate covers. Ask the user to confirm, remove, merge, or edit candidates before anything is created.
7. Only after the user confirms the set: for each approved candidate, follow the feature-documentation skill's full Workflow (next free `FEAT-XXX` ID, template, all six Guardrails, quality scoring, cross-links back to the epic's Features table and the table of contents) to create the EN/FR pair.
8. Do not skip step 5 even if the user seems to want to move fast — an unconfirmed overlap here is more expensive to fix once two feature documents already exist independently.
