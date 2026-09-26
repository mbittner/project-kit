# Modern BA Practice Markdown Pack

*[Lire ce document en français](README-fr.md)*

This workspace helps Product Managers and Product Owners draft, review, and track bilingual business requirements with Copilot Chat. It includes an example portfolio, reusable templates, guided checks, and documentation status tracking.

Browse the business requirements in the [Table of Contents](table-of-content.md). Supporting material is organized under `docs/business/` and `docs/technical/` and is not part of the requirements index.

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
Start with the artifact that matches the decision you need to make; the [Business User Guide](docs/business/business-user-guide.md) explains the workflow from drafting through sharing.

## How to Use This

Open Copilot Chat and describe the business outcome or artifact you need. For example:

> "Draft an epic under INIT-001 for digital group onboarding."

> "Is EPIC-002 ready for feature discovery?"

Copilot creates English/French pairs, records assumptions and open questions, checks stakeholders and scope overlaps, and avoids inventing unconfirmed facts. The detailed behavior is covered in the [Business User Guide](docs/business/business-user-guide.md).

## Useful Commands

Use these shortcuts in Copilot Chat when you need a repeatable workflow:

| Command | What it does |
|---|---|
| `/validate epic 003` | Checks the item you name — `initiative`, `epic`, `feature`, `story`, `cm-epic`, or `cm-feature` — against its quality checklist and gives it a score, with specific gaps called out. You must say which type it is (e.g. `/validate initiative 001`, `/validate story 004`). |
| `/decompose-initiative 001` | Gets the latest updates automatically, then proposes a non-overlapping epic set; refreshes again after you confirm before creating files. |
| `/decompose-initiative 001` | Proposes a non-overlapping epic set and refreshes updates automatically before creation. |
| `/decompose-epic 003` | Same, proposing features for an epic. |
| `/decompose-epic 003` | Refreshes updates automatically, then proposes features for an epic. |
| `/decompose-feature 011` | Same, proposing user stories for a feature. |
| `/audit-pack` | Runs a full health check across every document — or just one initiative and everything under it (`/audit-pack INIT-001`) — and gives you one report of what needs attention, including whether any team or group is being asked to absorb too much change at once. |
| `/save-my-work` | Saves your changes so they're safely recorded. Doesn't send them to your teammate yet. |
| `/share-my-work` | Gets your teammate's latest updates first, then sends your saved changes to them. Warns you about any quality issues first, but won't stop you from sharing. |
| `/get-latest` | Brings in your teammate's latest changes and tells you what's new; epic creation does this automatically, but you can still run it on demand. |
| `/show-history EPIC-003` | Shows a plain-language timeline of who changed a document and when — leave the ID off to see the whole project's recent history. |
| `/undo-my-last-change` | Safely undoes your last change, always showing you what would be lost first and asking you to confirm. |

(Replace the numbers with the ID of the document you mean — e.g. `003` for `EPIC-003`.)

## Further Reading

- [Business User Guide](docs/business/business-user-guide.md) and [French guide](docs/business/business-user-guide-fr.md)
- [Solution Architecture](docs/technical/solution-architecture.md)
- [Latest Release Notes](docs/technical/release-notes/2026-09-26-documentation-governance-and-epic-workflows.md)

## Document Status: Draft → In Review → Approved

Documents progress from **Draft** to **In Review** to **Approved**. Use `/validate <type> <id>` for the readiness score, checklist, and approval decision. Approval requires the artifact-specific quality threshold, completed checklist, and no unresolved critical questions.

## Versioning and Documentation Status

The `Document version` field records the approved baseline; it does not change on every edit. `/validate` can propose a version change for your confirmation. The [Documentation Status Register](documentation-register.md) summarizes document status, active work, and approved baselines.

## Saving and Sharing Your Work

Use `/save-my-work` to record your current work and `/share-my-work` to retrieve recent teammate changes, resolve conflicts, run checks, and share. `/get-latest`, `/show-history`, and `/undo-my-last-change` remain available when needed. The [Business User Guide](docs/business/business-user-guide.md) explains these workflows.

## Who's Involved

Use the [Stakeholder Register](stakeholder-register.md) for governance roles, impacted groups, representative contacts, and their change exposure.

## Folder Structure

- `initiative/` — the portfolio-level initiative document
- `epics/` — one document per epic
- `features/` — one document per feature
- `stories/` — one document per user story
- `change-management/` — one brief per epic and per feature, plus an overall summary
- `docs/business/` — practical guides for business users
- `docs/technical/` — architecture documentation and release notes
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
