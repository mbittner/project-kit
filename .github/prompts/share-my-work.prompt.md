---
description: "Share your saved changes with your teammate, without needing to know any git commands. Gets the latest updates first, checks document quality, and warns about (but does not block on) any issues before sharing."
name: "Share My Work"
agent: "agent"
tools: [read, edit, search, execute]
---
Share the user's saved changes with their teammate.

## Steps

1. Load the [version-history](../skills/version-history/SKILL.md) skill in full — follow its ground rules.
2. If the user has unsaved changes (per `/save-my-work`), save them first using the same summarization approach, unless the user says they only want to share what's already saved.
3. **Get the latest updates first** (this reduces the chance of an ID collision or being out of date). If this brings in new or changed documents, briefly tell the user what came in.
4. **If there's a conflict** between the user's changes and the teammate's: follow the version-history skill's "Handling Conflicts" procedure exactly — identify the conflicting document(s), explain both sides in plain language, ask the user to choose or combine, and only continue once resolved. Never guess and silently pick a side.
5. Once there's nothing left to resolve, if a document status or baseline version changed, run [generate-documentation-register.ps1](../skills/pack-integrity-check/scripts/generate-documentation-register.ps1) from the workspace root; then run the [pack-integrity-check](../skills/pack-integrity-check/SKILL.md) checks (`check-ids.ps1`, `check-parity.ps1`, `check-links.ps1`, `check-checklists.ps1`, `check-document-headers.ps1`, `check-toc-coverage.ps1`) against what's about to be shared.
6. Report any findings in plain language (e.g., "Heads up — FEAT-022 links to a document that doesn't exist" or "EPIC-004 and its French version don't match"). **This is informational only — there is no approval gate on this team.** Ask if they want to fix anything first, but proceed with sharing if they say to go ahead regardless.
7. Confirm that the documentation register reflects any active-work or approved-baseline changes included in this share. Keep the register's English and French copies aligned; do not invent an owner, next action, approval, or version.
8. Share the changes with the team.
9. Confirm success in plain language: "Your changes are now shared with [teammate]." If there was nothing new to share, say so instead.
