---
description: "Propose a coherent, non-overlapping set of candidate User Stories for an approved Feature before creating any files — runs the sibling-overlap check across the whole proposed set (plus any existing stories) at design time, instead of catching overlap after two stories already exist. Presents candidates for confirmation; does not create files until approved."
name: "Decompose Feature Into Stories"
argument-hint: "Feature number or ID, e.g. 003 or FEAT-011"
agent: "agent"
tools: [read, edit, search, execute]
---
Propose candidate user stories for the feature identified by `${input}` (accepts a bare number like `003` or a full ID like `FEAT-011`).

## Steps

1. Load the [feature-documentation](../skills/feature-documentation/SKILL.md), [user-story-documentation](../skills/user-story-documentation/SKILL.md), and [sibling-overlap-validation](../skills/sibling-overlap-validation/SKILL.md) skills in full before proposing anything.
2. Resolve the target file in `features/` matching `feat-<zero-padded number>-*.md`. If no match is found, list the existing feature IDs and ask the user which one to decompose.
3. Read the feature's Feature Statement, Acceptance Criteria, Scope (In Scope list), and existing Candidate User Stories list (including any already-drafted `STORY-XXX` documents).
4. Draft a candidate set of stories that collectively covers the feature's behavior with no gaps, where:
   - Each candidate has a Story Statement ("As a [user] I want [capability] so that [value]" — not a solution, see user-story-documentation Guardrail 1), the specific acceptance-criterion behavior or scope item it covers, a best-guess primary user, and a one-line rationale.
   - Each candidate is checked against all six INVEST letters at a glance — don't propose a candidate that's obviously too large (looks like a feature) or too narrow (looks like a task).
   - Stories already drafted as real `STORY-XXX` documents are treated as fixed siblings, not re-proposed.
5. Before presenting the set, run the [sibling-overlap-validation](../skills/sibling-overlap-validation/SKILL.md) procedure across the **full sibling set** (existing stories + all newly proposed candidates) — no two story statements or acceptance-criterion behaviors may overlap. Revise the candidate set until this passes; do not present a set that still has an overlap.
6. Present the candidate set as a table (Story Statement | Covers | Primary User | Rationale) and explicitly flag any feature behavior or in-scope item that no candidate covers. Ask the user to confirm, remove, merge, or edit candidates before anything is created.
7. Only after the user confirms the set: for each approved candidate, follow the user-story-documentation skill's full Workflow (next free `STORY-XXX` ID, template, all five Guardrails, quality scoring, cross-links back to the feature's Candidate User Stories list and the table of contents) to create the EN/FR pair.
8. Do not skip step 5 even if the user seems to want to move fast — an unconfirmed overlap here is more expensive to fix once two story documents already exist independently.
