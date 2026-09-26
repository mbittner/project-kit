---
description: "Undo your last change safely, without needing to know any git commands. Always shows what would be lost and asks for confirmation first. Never rewrites changes that were already shared with your teammate — adds a correcting update instead."
name: "Undo My Last Change"
argument-hint: "Optional: a document ID if you only want to undo changes to one document"
agent: "agent"
tools: [read, edit, search, execute]
---
Undo the user's last change, optionally scoped to `${input}` (a document ID) if given.

## Steps

1. Load the [version-history](../skills/version-history/SKILL.md) skill in full — follow its ground rules, especially "never rewrite shared history" and "confirm before anything destructive."
2. Determine what state the change is in:
   - **Not yet saved** (still being edited): the undo just discards the uncommitted edits.
   - **Saved but not yet shared:** the undo can safely remove that saved change entirely, turning it back into an editable draft (or discarding it, if asked).
   - **Already shared with the teammate:** the undo must **not** erase or rewrite that shared history. Instead, create a new change that reverses it, and offer to share that correction now (via the same flow as `/share-my-work`).
3. Before doing anything, show the user exactly what would be undone in plain language (which document(s), what the change was) and get explicit confirmation.
4. Perform the appropriate undo for that state.
5. Confirm what happened: "Undid your last change to FEAT-011 — it's back to a draft you can edit again." or, for an already-shared change: "That change was already shared, so I added a correction instead of erasing it. Want me to share the correction now?"
