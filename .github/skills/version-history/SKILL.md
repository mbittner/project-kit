-**Because there's no approval gate, the integrity checks are advisory, not blocking.** Before sharing changes, run the [pack-integrity-check](../pack-integrity-check/SKILL.md) checks and tell the user about any findings (broken links, missing table-of-contents entries, EN/FR header mismatches, ID gaps, or status-gate issues) — but still share the changes if the user wants to proceed. Never silently refuse to share; surface the warning and let the human decide.
---
name: version-history
description: "Use when the user wants to save, share, retrieve, inspect, or undo changes to documents in this repo without needing to know git, or manage approved baseline versions and documentation status — trigger phrases: save my work, back up my changes, share my changes, share with my teammate, get the latest, get my teammate's changes, who changed this, show me the history, what changed, undo my last change, restore a previous version, document version, approved baseline, documentation status, did anyone else change this, merge conflict, my changes conflict with theirs."
---

# Version History (Git, Hidden Behind Plain Language)

This repo is stored in an **Azure DevOps Git repository** that is also **published as a wiki** (the same Markdown files render as wiki pages). The team is two non-technical people working mostly on separate artifact types (one on epics, one on features/stories) with some shared feature files — so occasional overlapping edits are expected but not constant.

**Never say or type the words "git", "commit", "branch", "push", "pull", "merge", or "repository" to the user.** Use the plain-language equivalents below. The mapping is for your own internal use only.

| User says / asks | You actually do |
|---|---|
| "Save my work" / "back up my changes" | Stage + commit locally |
| "Share my changes" / "share with my teammate" | Get the latest first, then commit + push |
| "Get the latest" / "get my teammate's changes" | Fetch + merge |
| "Show me the history" / "who changed this" | `git log` translated to plain language |
| "Undo my last change" / "restore a previous version" | Restore/reset/revert, chosen based on whether it was already shared |

## Ground Rules (Trunk-Based, No Approval Gate)

- **One shared line of work.** Everyone works directly on the main line (`main`) — there are no feature branches and no review/approval step before something is shared. This matches how this team wants to work: fast, direct, low-ceremony.
- **Because there's no approval gate, the integrity checks are advisory, not blocking.** Before sharing changes, run the [pack-integrity-check](../pack-integrity-check/SKILL.md) scripts and tell the user about any findings (broken links, EN/FR mismatches, ID gaps, status-gate issues) — but still share the changes if the user wants to proceed. Never silently refuse to share; surface the warning and let the human decide.
- **Never rewrite shared history.** No force-push, no `git reset --hard` or `rebase` on anything that has already been shared. If a shared change needs to be undone, add a new correcting change (a revert) instead of erasing history — this keeps both teammates' copies consistent and avoids silently discarding the other person's work.
- **Confirm before anything destructive.** Before discarding uncommitted edits or undoing a save, show in plain language exactly what would be lost and get an explicit "yes" first.
- **Never handle credentials.** If a git operation prompts for a username/password/personal access token in the terminal, tell the user to type it directly into the terminal themselves — never ask for it via chat, never paste it into a message.
- **First-time setup isn't part of this skill.** If the folder isn't connected to the Azure DevOps repository yet (no remote configured), that's a one-time setup step for the user (or an admin) to do first — tell them so rather than trying to configure remotes/credentials yourself.

## Approved Baseline Versions

- `Document version` (or `Version du document` in French documents) records the latest **approved baseline**, not every saved edit. Drafts that have never been approved use `Not baselined`.
- Keep the version field on its own rendered line with a Markdown hard break (two trailing spaces), immediately after the status line without a blank spacer. This keeps the following parent or related-document field on its own line too.
- On first approval, set the version to `1.0`. Keep the current approved version while a document is In Review; draft edits are already captured by the shared change history.
- After revalidation and approval, increment the minor number for changes to requirements that preserve the outcome and scope (for example, `1.0` to `1.1`). Increment the major number when the business outcome or scope is materially redefined (for example, `1.1` to `2.0`). Editorial-only changes do not increment the baseline version.
- Use these examples consistently:
	- **No increment:** spelling, formatting, or wording cleanup that does not change interpretation.
	- **Minor increment:** add or revise an acceptance criterion, validation rule, or field while preserving the agreed business outcome and scope (`1.0` to `1.1`).
	- **Major increment:** materially change the target users, business outcome, or capability boundary (`1.1` to `2.0`).
- `/validate` remains read-only by default. After an eligible validation, report the recommended next version and explain the classification. Add that proposal to the artifact only when the user explicitly asks to record it; do not change `Document version` or the approved-baseline register while it is pending.
- Record a pending proposal in a `## Pending Baseline Proposal` section immediately after the header block. Use the same section and decision details in both languages:

	```markdown
	## Pending Baseline Proposal
	- **Current approved version:** <version or Not baselined>
	- **Proposed version:** <major.minor>
	- **Change classification:** <First approval | Minor | Major | Editorial only>
	- **Rationale:** <why this version is recommended>
	- **Validation:** <YYYY-MM-DD> — Score <NN>/100 (<Rating>)
	- **Decision:** Pending user confirmation
	```

	In French, use the heading `## Proposition de version de base en attente` and the labels `Version approuvée actuelle`, `Version proposée`, `Classification du changement`, `Justification`, `Validation`, and `Décision`.
- If the user proposes a different valid next version, update the pending section in both documents and state the rationale. If the user declines the proposal without replacing it, remove the pending section and leave the document In Review; keep the approved baseline unchanged.
- When the user confirms the proposed version and approval, remove the pending section from both language copies, update both `Document version` fields, set status to Approved, add the `Last validated` evidence, and regenerate the documentation register. If approval criteria are not met, do not record or apply a proposal as an approved baseline.
- Saving or sharing alone never increments a baseline.
- Never set a document to Approved or assign its next baseline version without the artifact's validation and approval criteria being met. If the scale of a change is unclear, ask the user whether it changes the outcome/scope before choosing the next number.
- Keep English and French copies on the same status and baseline version. When a document's status, baseline version, or active-work state changes, update the manual Active Work section as needed, then run [generate-documentation-register.ps1](../pack-integrity-check/scripts/generate-documentation-register.ps1) to refresh both registers' generated sections.
- The document header is authoritative. The documentation register is a concise dashboard of active work and approved baselines; do not treat its summary as a replacement for the artifact or its detailed change history.

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

## Publishing as a Wiki — `.order` Files

If the Azure DevOps project publishes this repo as a wiki, some folders may contain a `.order` file that controls the left-hand navigation order of pages. If you see one in a folder where you just added a new document, ask the user whether they'd like it added to the `.order` file too — don't create `.order` files in folders that don't already have one, since that's an explicit choice the team makes, not a default.

## Related Commands

See the `/save-my-work`, `/share-my-work`, `/get-latest`, `/show-history`, and `/undo-my-last-change` commands (`.github/prompts/`) for the concrete step-by-step procedures built on top of these rules.
