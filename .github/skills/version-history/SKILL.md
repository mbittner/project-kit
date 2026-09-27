-**Because there's no approval gate, the integrity checks are advisory, not blocking.** Before sharing changes, run the [pack-integrity-check](../pack-integrity-check/SKILL.md) checks and tell the user about any findings (broken links, missing table-of-contents entries, EN/FR header mismatches, ID gaps, or status-gate issues) — but still share the changes if the user wants to proceed. Never silently refuse to share; surface the warning and let the human decide.
---
name: version-history
description: "Use when the user wants to save, share, retrieve, inspect, or undo changes to documents in this repo without needing to know git, or manage approved baseline versions and documentation status — trigger phrases: save my work, back up my changes, share my changes, share with my teammate, get the latest, get my teammate's changes, who changed this, show me the history, what changed, undo my last change, restore a previous version, document version, approved baseline, documentation status, did anyone else change this, merge conflict, my changes conflict with theirs."
---

# Version History (Copilot Interface)

This skill implements the work-lifecycle capabilities in the [tool capability contracts](../../../docs/technical/tool-capability-contracts.md). The [version-control adapter](../../../docs/technical/version-control-adapter.md) documents the current storage and collaboration mechanics. The contract defines the outcomes; this skill defines how Copilot applies them.

Keep user-facing explanations plain and accurate. Do not expose implementation jargon, credentials, or claim work was shared unless the adapter verifies publication.

## Copilot Execution Rules

- Follow the capability contract for confirmation, conflict, local-save, share, and recovery behavior.
- Follow the version-control adapter for provider-specific operations. If the configured provider or destination is missing or ambiguous, stop and explain; do not guess or reconfigure it.
- Run the [pack-integrity-check](../pack-integrity-check/SKILL.md) checks before sharing. Findings are advisory: explain them and let the user decide whether to fix them or proceed.
- Never request or handle credentials. If authentication requires user input, direct the user to enter it in the terminal.

## Approved Baseline Versions

Follow the [Approved Baseline contract](../../../docs/technical/tool-capability-contracts.md#approved-baselines). When a user's eligible validation leads to a version proposal, apply the contract's pending-proposal and approval rules. Do not treat local persistence or publication as approval.

## Automatic Documentation Maintenance
Run the [Automatic Documentation Maintenance contract](../../../docs/technical/tool-capability-contracts.md#documentation-maintenance) for every applicable non-empty save/share change set after conflicts are resolved. Update the relevant business and technical documentation, complete any required register generation, and maintain or create the release note before composing the change summary. Do not duplicate the contract's rules here; record implementation-specific exceptions in the adapter documentation.

## Reducing ID Collisions (Two People, Shared Feature Files)

Because both teammates can create new `EPIC-XXX`/`FEAT-XXX`/`CM-*` documents, two people picking "the next free ID" at the same time without syncing first is the most likely real conflict.

Before creating a new Epic, whether directly or through `/decompose-initiative`:
1. Automatically follow the [get-latest](../../prompts/get-latest.prompt.md) workflow. Do not ask the user to invoke `/get-latest` manually.
2. If the user has unsaved edits, ask them to save first. If incoming changes conflict with local edits, follow **Handling Conflicts** and resolve them before drafting or assigning IDs.
3. Re-read the initiative portfolio and sibling epics, then run `check-ids.ps1` immediately before assigning IDs.
4. For `/decompose-initiative`, run the latest-update workflow again after the user confirms the proposed set and before assigning IDs. If incoming changes affect the initiative or candidates, refresh the proposal and ask the user to confirm the revised set before creating files.

If the automatic refresh cannot complete because the shared history is unavailable or needs setup, explain that the ID cannot be confirmed as current and ask whether to retry or continue with that risk. Never claim the workspace is up to date when the refresh failed.

For other artifact types, continue recommending `/get-latest` before creating a new artifact if the user has not refreshed recently, then run `check-ids.ps1` as usual.

If an ID collision still happens (both created `EPIC-014`, say), don't silently renumber either one — flag it to the user and ask which one should be renumbered, since IDs are referenced elsewhere (cross-links, CM briefs).

## Handling Conflicts (Plain Language)

When "getting the latest" or "sharing" hits overlapping edits on the same document:
1. Identify which document(s) conflict and tell the user in plain terms: *"You and [teammate] both changed FEAT-011 — here's what's different."*
2. Show both versions of the conflicting part(s) side by side in plain language (not raw `<<<<<<<` conflict markers) — summarize what each person changed, not just paste the markers.
3. Ask the user to choose: keep mine, keep theirs, or combine both (and offer to draft the combined version if they want help).
4. Once resolved, mark the file resolved and continue the save/share flow. Never guess and silently pick one side.

## Related Commands

See the `/save-my-work`, `/share-my-work`, `/get-latest`, `/show-history`, and `/undo-my-last-change` commands (`.github/prompts/`) for the concrete step-by-step procedures built on top of these rules.
