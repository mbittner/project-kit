---
description: "Save your current changes so they're safely recorded, without needing to know any git commands. Does not share them with your teammate yet — use /share-my-work for that."
name: "Save My Work"
argument-hint: "Optional: a short note about what you changed"
agent: "agent"
tools: [read, edit, search, execute]
---
Save the user's current changes locally. `${input}` (if provided) is a short plain-language note about what they did.

## Steps

1. Load the [version-history](../skills/version-history/SKILL.md) skill in full — follow its ground rules (no git jargon, no destructive actions without confirmation, never handle credentials).
2. Check what's changed (list of new, modified, and deleted files).
3. Run [system-register-validation](../skills/system-register-validation/SKILL.md) on every invocation, comparing the complete workspace change set with the technical System Register. Reconcile any confirmed new or changed project-system references; if no technical system reference needs reconciliation, record that result. If there are no source changes and the scan requires no update, tell the user there's nothing to save — don't do anything else.
4. For each changed requirement artifact, make sure its `Document version` field (`Version du document` in French) still reflects the latest approved baseline; do not increment it just because work was saved. If a previously Approved artifact has substantive requirement changes, set its EN/FR status to In Review while retaining the current baseline version.
5. Update the **Active Work** section in [documentation-register.md](../../documentation-register.md) for changed requirement artifacts that remain in progress. Include the artifact ID, current status, owner, and next action; ask for missing owner/next-action details, but use `To confirm` and continue saving if the user does not provide them. Remove an item only when the user confirms the work is complete or the artifact is approved. After changing the active list or document status/version, run [generate-documentation-register.ps1](../skills/pack-integrity-check/scripts/generate-documentation-register.ps1) from the workspace root to refresh both generated register sections.
6. Run the [Automatic Documentation Maintenance](../skills/version-history/SKILL.md#automatic-documentation-maintenance) procedure on the complete source change set and supporting register updates. Classify business and technical changes, update their relevant documentation and cross-links, and create or reuse one release note that includes those updates. For a new note, use the current UTC timestamp to the second in its filename (`YYYY-MM-DD-HHMMSSZ-<description>.md`) and header (`Date/time: YYYY-MM-DD HH:MM:SS UTC`). When materially updating an unshared note, refresh its `Updated at` timestamp and preserve the original filename. Do not ask the user to request these documentation updates. Do not create a note when no source changes exist or when the only changes are outputs of the same documentation-maintenance pass.
7. Write a clear, human-readable summary grouped by business changes, technical changes, documentation updates, and release note. Combine this with the user's note (`${input}`) if provided.
8. Derive a concise local commit subject from the intended change set and the summary:
	- Prefer `<scope>: <outcome>`, such as `epic: add EPIC-001 advisor self-service claims intake` or `architecture: rename technical artifact home to architecture`.
	- Include an artifact ID when one is clearly present; do not invent an ID.
	- For mixed changes, use the dominant scope or `pack:` and describe the main user-visible outcome.
	- Avoid generic subjects such as `save changes`, `update files`, or `work in progress`.
	- Keep the complete grouped summary as the commit body and report the subject before recording it.
9. Record the change locally with the derived subject and full summary as the commit body. Do not share it with the teammate yet.
10. Report back in plain language what was saved, including the commit subject, release note, and documentation updates.
