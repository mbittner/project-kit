---
description: "Show the plain-language change history of one document, or the whole project, without needing to know any git commands."
name: "Show History"
argument-hint: "Optional: a document ID like EPIC-003 or FEAT-011 — leave blank for the whole project's recent history"
agent: "agent"
tools: [read, search, execute]
---
Show the history of `${input}` (a document ID) or, if `${input}` is empty, the whole project's recent history.

## Steps

1. Load the [version-history](../skills/version-history/SKILL.md) skill in full.
2. If an ID was given, resolve it to its file (checking `initiative/`, `epics/`, `features/`, or `change-management/` as appropriate). If it can't be found, list similar IDs and ask which one they meant.
3. Retrieve the change history for that file (or, if no ID was given, the most recent history across the whole project — default to the last 20 entries unless the user asks for more or a date range).
4. Present it as a plain-language timeline, most recent first — date, who made the change, and a short description of what changed (translate the saved summaries, don't dump raw technical log output). For example:
   - `2026-09-20 — Alex — Added FEAT-011 Document Review and Version Status`
   - `2026-09-18 — Jordan — Updated EPIC-003: revised scope and dependencies`
5. If the user asks "what's different between these two versions," describe the substantive differences in plain language (which sections changed, not a line-by-line diff dump).
