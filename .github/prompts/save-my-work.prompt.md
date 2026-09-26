---
description: "Save your current changes so they're safely recorded, without needing to know any git commands. Does not share them with your teammate yet — use /share-my-work for that."
name: "Save My Work"
argument-hint: "Optional: a short note about what you changed"
agent: "agent"
tools: [read, search, execute]
---
Save the user's current changes locally. `${input}` (if provided) is a short plain-language note about what they did.

## Steps

1. Load the [version-history](../skills/version-history/SKILL.md) skill in full — follow its ground rules (no git jargon, no destructive actions without confirmation, never handle credentials).
2. Check what's changed (list of new, modified, and deleted files).
3. If nothing has changed, tell the user there's nothing to save — don't do anything else.
4. Write a clear, human-readable summary of what changed, grouped by artifact (e.g., "Added FEAT-022 Online Renewal Wizard", "Updated EPIC-004: revised scope and success metrics", "Updated the table of contents"). Combine this with the user's note (`${input}`) if they gave one.
5. For each changed requirement artifact, make sure its `Document version` field (`Version du document` in French) still reflects the latest approved baseline; do not increment it just because work was saved. If a previously Approved artifact has substantive requirement changes, set its EN/FR status to In Review while retaining the current baseline version.
6. Update the **Active Work** section in [documentation-register.md](../../documentation-register.md) for changed requirement artifacts that remain in progress. Include the artifact ID, current status, owner, and next action; ask for missing owner/next-action details, but use `To confirm` and continue saving if the user does not provide them. Remove an item only when the user confirms the work is complete or the artifact is approved. After changing the active list or document status/version, run [generate-documentation-register.ps1](../skills/pack-integrity-check/scripts/generate-documentation-register.ps1) from the workspace root to refresh both generated register sections.
7. Record the change locally with that summary as the description. Do not share it with the teammate yet.
8. Report back in plain language what was saved (the list of documents, not file paths or technical jargon) — e.g., "Saved your changes to FEAT-022 and EPIC-004. Say 'share my work' when you're ready to send this to [teammate]."
