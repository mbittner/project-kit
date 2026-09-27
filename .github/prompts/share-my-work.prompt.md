4. Run [system-register-validation](../skills/system-register-validation/SKILL.md) on every invocation against the complete local and incoming technical change set after latest-state retrieval and conflict resolution. Reconcile confirmed new or changed system references; if none need reconciliation, report that result. Then run [Automatic Documentation Maintenance](../skills/version-history/SKILL.md#automatic-documentation-maintenance) on the complete pending source change set. Reuse a release note already created by `/save-my-work`; preserve its timestamps if unchanged. If incoming source changes materially update that unshared note, preserve the creation timestamp and filename and refresh its `Updated at` UTC timestamp. If a distinct substantive change set needs its own note, create it with the current UTC time to the second in the filename (`YYYY-MM-DD-HHMMSSZ-<description>.md`) and header (`Date/time: YYYY-MM-DD HH:MM:SS UTC`). Do not generate a note for release-note or documentation outputs alone.
---
description: "Share your saved changes with your teammate, without needing to know any git commands. Gets the latest updates first, checks document quality, and warns about (but does not block on) any issues before sharing."
name: "Share My Work"
agent: "agent"
tools: [read, edit, search, execute]
---
Share the user's saved changes with their teammate by publishing them to the configured shared destination.

## Steps

1. Load the [version-history](../skills/version-history/SKILL.md) skill in full and follow its ground rules.
2. If the user has unsaved changes, run the `/save-my-work` workflow first unless they explicitly want to share only previously saved work.
3. Run `/get-latest` to retrieve the latest updates. If unsaved edits remain, ask the user to save them before continuing. If updates conflict with local work, explain both sides and ask the user how to resolve them; do not continue past an unresolved conflict.
4. Run [Automatic Documentation Maintenance](../skills/version-history/SKILL.md#automatic-documentation-maintenance) on the complete pending source change set. Reuse a release note already created by `/save-my-work`; preserve its timestamps if unchanged. If incoming source changes materially update that unshared note, preserve its creation timestamp and filename and refresh its `Updated at` UTC timestamp. If a distinct substantive change set needs its own note, create it with the current UTC time to the second in the filename (`YYYY-MM-DD-HHMMSSZ-<description>.md`) and header (`Date/time: YYYY-MM-DD HH:MM:SS UTC`). Do not generate a note for release-note or documentation outputs alone.
5. Run the [pack-integrity-check](../skills/pack-integrity-check/SKILL.md) checks (`check-ids.ps1`, `check-parity.ps1`, `check-links.ps1`, `check-checklists.ps1`, `check-document-headers.ps1`, `check-toc-coverage.ps1`, `check-adr-chain.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`, `check-system-mentions.ps1`) against the complete set about to be shared.
6. Summarize the business changes, technical changes, documentation updates, release note, and integrity findings in plain language. Ask the user to confirm before publishing. Findings are advisory; the user may proceed despite them or ask for fixes first.
7. After the user confirms, publish the complete intended change set:
	- Confirm the configured remote and current shared branch are available. If either is missing or ambiguous, stop and explain what setup is needed; do not claim the changes were shared.
	- Stage only files in the summarized change set. Leave unrelated pre-existing edits untouched.
	- If the changes do not already have a local commit, create one using the human-readable summary. Do not create an empty or duplicate commit for changes already recorded locally.
	- Push the pending local commit(s) to the configured remote and shared branch. Never force-push or rewrite shared history.
	- Verify the push succeeded and no intended outgoing changes remain.
8. Report success only after publication is verified. If recording or publishing fails, state clearly that the changes were not shared, explain the failure, and preserve local work for retry. If there was nothing new to publish, say so.
