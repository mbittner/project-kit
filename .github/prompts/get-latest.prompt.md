---
description: "Get your teammate's latest changes, without needing to know any git commands. Tells you in plain language what's new or different."
name: "Get Latest"
agent: "agent"
tools: [read, edit, search, execute]
---
Bring in the teammate's latest changes.

## Steps

1. Load the [version-history](../skills/version-history/SKILL.md) skill in full — follow its ground rules.
2. If the user has unsaved changes, tell them what those are and ask whether to save those first (recommended) before getting the latest, to avoid mixing unsaved edits with an incoming update.
3. Retrieve the latest changes from the team.
4. **If this creates a conflict** with the user's own unsaved or unshared changes: follow the version-history skill's "Handling Conflicts" procedure — explain both sides in plain language and ask the user to choose or combine.
5. Once complete, summarize in plain language what came in — e.g., "Your teammate added FEAT-023 and updated CM-EPIC-004. No changes to anything you were working on." If nothing new came in, say so.
