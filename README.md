# Modern BA Practice Markdown Pack

*[Lire ce document en français](README-fr.md)*

This project helps you write clear, consistent business requirements — Initiatives, Epics, Features, User Stories, and Change Management briefs — with help from GitHub Copilot Chat, right inside this folder. You don't need to know Markdown or any special syntax: just describe what you want in plain English (or French) in the chat, and Copilot will produce a properly structured, linked, and quality-checked document.

This pack includes a fully worked example — **INIT-001 Modernize New Business Onboarding** — broken down into 6 epics and 21 features, so you can see what a finished set of documents looks like. See the **[Table of Contents](table-of-content.md)** for the full list.
This pack includes a fully worked example — **INIT-001 Modernize New Business Onboarding** — broken down into 6 epics and 21 features, so you can see what a finished set of documents looks like. See the **[Table of Contents](table-of-content.md)** for all business-facing requirements and registers in both languages; technical notes, release notes, and practical guides are kept in `docs/` and excluded.

## The Big Picture

Every business requirement fits into one of these levels, and each level answers a different question:

```text
Initiative  →  Epic          →  Feature          →  User Story
(Why?)         (What capability?) (What exactly?)     (What does the user need to accomplish?)
```

- **Initiative** — the strategic investment. Why does the organization need to do this at all?
- **Epic** — a business capability that makes the initiative real. What must we be able to do?
- **Feature** — a specific, testable piece of that capability. What exactly will people be able to do?
- **User Story** — a small, sprint-sized piece of a feature, written from one user's point of view. What does this person specifically need, and how will we know it's done?
- **Change Management Brief** — one per epic and one per feature (not needed at the story level — the feature-level brief already covers it). Who is affected, and what will they need to do differently on the day this goes live?

You don't have to build these top-down in one sitting. Start wherever you are — even a rough one-line idea — and Copilot will fill in reasonable details, flag anything it's genuinely unsure about, and tell you if something is missing.

## How to Use This

Open Copilot Chat in this project and just describe what you need, for example:

> "Create a new initiative to reduce onboarding time for new insurance groups."

> "Draft an epic under INIT-001 for letting brokers upload documents digitally."

> "Write a feature under EPIC-003 that lets advisors save an incomplete application and finish it later."

> "Write a user story under FEAT-011 for a broker who needs to see a document's version history."

> "Is EPIC-002 ready to move forward?"

> "Break EPIC-004 down into features."

> "Break FEAT-011 down into user stories."

For a step-by-step explanation of how drafting, validation, stakeholder checks, and sharing work behind the scenes, see the [Business User Guide](docs/business-user-guide.md).

For an independent second opinion on a consequential or ambiguous document, choose **BA Requirements Reviewer** in Copilot Chat and ask it to review the artifact. It returns prioritized findings without changing files. This optional review complements, but does not replace, `/validate` or the pack's mechanical checks.

Copilot will:
- Ask you a question only when it genuinely can't make a reasonable assumption (and it will never ask you more than a handful of questions at once — anything less critical gets logged as an open question instead, so you can decide on it later without holding up the draft).
- Use plain "To confirm" placeholders instead of inventing numbers, dates, or names.
- Automatically produce both an English and a French version of every document, kept in sync.
- Before creating a new epic, automatically bring in the latest teammate changes before checking the next ID; you do not need to run `/get-latest` manually. If there are conflicts or the refresh is unavailable, Copilot pauses and tells you.
- Check its own work against a quality checklist before telling you it's done.

You don't need to remember any special commands to get started — normal conversation works. The commands below are shortcuts for specific, repeatable checks.

## Useful Commands

Type these directly into Copilot Chat (they start with `/`):

| Command | What it does |
|---|---|
| `/validate epic 003` | Checks the item you name — `initiative`, `epic`, `feature`, `story`, `cm-epic`, or `cm-feature` — against its quality checklist and gives it a score, with specific gaps called out. You must say which type it is (e.g. `/validate initiative 001`, `/validate story 004`). |
| `/decompose-initiative 001` | Gets the latest updates automatically, then proposes a non-overlapping epic set; refreshes again after you confirm before creating files. |
| `/decompose-epic 003` | Same, proposing features for an epic. |
| `/decompose-feature 011` | Same, proposing user stories for a feature. |
| `/audit-pack` | Runs a full health check across every document — or just one initiative and everything under it (`/audit-pack INIT-001`) — and gives you one report of what needs attention, including whether any team or group is being asked to absorb too much change at once. |
| `/save-my-work` | Saves your changes so they're safely recorded. Doesn't send them to your teammate yet. |
| `/share-my-work` | Gets your teammate's latest updates first, then sends your saved changes to them. Warns you about any quality issues first, but won't stop you from sharing. |
| `/get-latest` | Brings in your teammate's latest changes and tells you what's new; epic creation does this automatically, but you can still run it on demand. |
| `/show-history EPIC-003` | Shows a plain-language timeline of who changed a document and when — leave the ID off to see the whole project's recent history. |
| `/undo-my-last-change` | Safely undoes your last change, always showing you what would be lost first and asking you to confirm. |

(Replace the numbers with the ID of the document you mean — e.g. `003` for `EPIC-003`.)

## Document Status: Draft → In Review → Approved

Every document starts as a **Draft**. Before something can be marked **Approved**, it must:
1. Score high enough on its quality checklist (ask Copilot to check with the `/validate` command above).
2. Have every checklist item ticked.
3. Have no unresolved critical questions left open.
4. Record the validation date, score, and rating in the `Last validated` header field when approving. New templates use `Not recorded` until then; existing documents without the field get it when approved. Draft and In Review validation scores stay in the validation report.

Copilot will refuse to mark a document Approved if any of these aren't true yet — it'll tell you what's missing instead.

## Versioning and Documentation Status

The `Document version` header records the approved baseline, not each saved edit. French documents use the label `Version du document` for the same field. Documents remain `Not baselined` until first approval (`1.0`). Editorial-only changes do not increment the version; changes to acceptance criteria within the same outcome and scope are minor (`1.0` to `1.1`); materially changing target users, outcome, or scope is major (`1.1` to `2.0`). At `/validate`, Copilot proposes a version with its rationale and waits for your confirmation before applying it. If you ask to record the proposal, it is added as a separate **Pending Baseline Proposal** section; the approved version and register stay unchanged until approval. An approved document being revised returns to In Review and keeps its existing baseline version until it is validated and approved again. See the [Documentation Status Register](documentation-register.md) for the current portfolio snapshot, active work, and approved baselines. Document headers remain authoritative; active work is listed only when it is explicitly tracked, not inferred from Draft status.

## Saving and Sharing Your Work

This project's documents are stored in the team's Azure DevOps project (the same place that hosts the wiki), but you don't need to know anything about how that works. Just tell Copilot what you want in plain language:

> "Save my work."

> "Share my changes with [teammate]."

> "Get the latest from [teammate]."

> "Show me the history of EPIC-003."

> "Undo my last change."

A few things to know:
- **Saving** just records your changes for yourself — it doesn't send anything to your teammate yet.
- **Sharing** gets your teammate's latest updates first, then sends yours. If you both changed the same document, Copilot will explain what's different in plain language and ask you which parts to keep — it won't guess.
- There's no approval step blocking you from sharing — Copilot will mention any quality issues it finds first, but the choice to share anyway is always yours.
- Undo always shows you what would be lost and asks you to confirm first. If the change was already shared with your teammate, Copilot adds a correction instead of erasing it, so nobody's work disappears unexpectedly.
- Undo always shows you what would be lost and asks you to confirm first. If the change was already shared with your teammate, Copilot adds a correction instead of erasing it, so nobody's work disappears unexpectedly.
- Before sharing, automatic checks confirm business documents are listed in the matching language table of contents and that paired status/version headers render consistently. When status or version changes, the register's portfolio counts and approved-baseline list are regenerated from document headers; Active Work owner and next-action notes remain manually maintained.

## Who's Involved

[stakeholder-register.md](stakeholder-register.md) is a single, always-up-to-date list of everyone this work touches: the people accountable for decisions (sponsor, product manager, product owner, and so on) and the teams or roles affected by the change (plan sponsor administrators, brokers, underwriters, operations staff...). Whenever a document names a stakeholder, Copilot checks this list first — reusing the same name if it's already there, adding them if it's a genuine gap, or flagging it as an open question if it's not yet clear who's affected. For every new affected group, confirm its Manager and subject matter expert (SME); if either contact is unknown, record the unanswered question in that group's profile. Nothing gets defined once and forgotten. `/audit-pack` also uses this list to warn you if the same team is being asked to absorb High or Medium impact from several changes at the same time, so you can space things out or combine training instead of overwhelming one group.

## Folder Structure

- `initiative/` — the portfolio-level initiative document
- `epics/` — one document per epic
- `features/` — one document per feature
- `stories/` — one document per user story
- `change-management/` — one brief per epic and per feature, plus an overall summary
- `docs/` — practical user guides and technical documentation, not business requirement artifacts
- `templates/` — blank starting points (you normally won't need to open these yourself — just ask Copilot to draft something)
- `stakeholder-register.md` — the list of who's involved and who's affected, described above
- [documentation-register.md](documentation-register.md) — current document status, active work, and approved baseline versions

## Suggested Review Order

1. Review and approve the initiative's boundaries and expected outcomes.
2. Validate each epic's objective, value, and dependencies on other epics.
3. Run discovery discussions for each feature.
4. Confirm readiness before breaking a feature down into day-to-day delivery tasks.

## Important

This pack is a working example, not an approved organizational standard. All baselines, targets, dates, owners, system choices, and detailed rules are intentionally left marked for validation — treat "To confirm" and "To approve" as literal instructions to go get a real answer before relying on the document.
