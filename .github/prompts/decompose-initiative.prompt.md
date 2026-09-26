---
description: "Propose a coherent, non-overlapping set of candidate Epics for an approved Initiative before creating any files — runs the sibling-overlap check across the whole proposed set (plus any existing epics) at design time, instead of catching overlap after two epics already exist. Presents candidates for confirmation; does not create files until approved."
name: "Decompose Initiative Into Epics"
argument-hint: "Initiative number or ID, e.g. 001 or INIT-001"
agent: "agent"
tools: [read, edit, search, execute]
---
Propose candidate epics for the initiative identified by `${input}` (accepts a bare number like `001` or a full ID like `INIT-001`).

## Steps

1. Load the [initiative-documentation](../skills/initiative-documentation/SKILL.md), [epic-documentation](../skills/epic-documentation/SKILL.md), [sibling-overlap-validation](../skills/sibling-overlap-validation/SKILL.md), and [version-history](../skills/version-history/SKILL.md) skills in full before proposing anything.
2. Automatically follow the [get-latest](get-latest.prompt.md) workflow before reading the initiative portfolio or proposing epics. Do not ask the user to invoke `/get-latest` manually. If there are unsaved edits, ask the user to save first; resolve incoming conflicts before continuing. If the refresh cannot complete, explain why and ask whether to retry or proceed with ID-collision risk.
3. Resolve the target file in `initiative/` matching `init-<zero-padded number>-*.md`. If no match is found, list the existing initiative IDs and ask the user which one to decompose.
4. Read the initiative's Desired Outcomes, Scope (In Scope list), and existing Epic Portfolio table (if it already lists epics).
5. Draft a candidate set of epics that collectively covers every In Scope item with no gaps, where:
   - Each candidate has a one-sentence Capability Statement (not a solution — see epic-documentation Guardrail 1), the specific In Scope item(s) it covers, a best-guess primary user, and a one-line rationale.
   - Epics already listed in the Epic Portfolio table are treated as fixed siblings, not re-proposed.
6. Before presenting the set, run the [sibling-overlap-validation](../skills/sibling-overlap-validation/SKILL.md) procedure across the **full sibling set** (existing epics + all newly proposed candidates) — no two capability statements or scope items may overlap. Revise the candidate set until this passes; do not present a set that still has an overlap.
7. Present the candidate set as a table (Capability Statement | Covers | Primary User | Rationale) and explicitly flag any In Scope item from the initiative that no candidate covers. Ask the user to confirm, remove, merge, or edit candidates before anything is created.
8. After the user confirms the set, automatically follow the latest-update workflow again before assigning IDs. If new changes affect the initiative or sibling epics, update the candidate set, repeat the overlap check, and get confirmation again. Only then, for each approved candidate, follow the epic-documentation skill's full Workflow (next free `EPIC-XXX` ID, template, all five Guardrails, quality scoring, cross-links back to the initiative's Epic Portfolio table and the table of contents) to create the EN/FR pair.
9. Do not skip the overlap checks at proposal time or after the final refresh — an unconfirmed overlap is more expensive to fix once two epic documents already exist independently.
