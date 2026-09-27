# Project Documentation Pack

*[Lire ce document en français](README-fr.md)*

This workspace helps Product Managers, Product Owners, and Solution Architects draft, review, and track bilingual project documentation (business requirements and architecture) with Copilot Chat. It includes reusable templates, guided checks, and documentation status tracking, with no project-specific requirements preloaded.
Browse the business requirements in the [Table of Contents](table-of-content.md). Supporting material is organized under `docs/business/` and `docs/technical/`. Suggestions for improving the pack itself are tracked separately in the [Tool Improvement Ideas Register](docs/ideas/README.md), outside the requirements index.

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

No project-specific business requirements are preloaded. Begin with an Initiative when the project is ready, and let Copilot flag material unknowns rather than inventing answers.
Start with the artifact that matches the decision you need to make; the [Business User Guide](docs/business/business-user-guide.md) explains the workflow from drafting through sharing.

The workflow behavior is defined separately from the current Copilot interface and GitHub-backed storage. The interface or storage can change without changing the business rules and user guarantees.

## How to Use This

Open Copilot Chat and describe the business outcome or artifact you need. For example:

> "Draft an epic under <initiative ID> for <business capability>."

> "Is my epic ready for feature discovery?"

Copilot creates English/French pairs, records assumptions and open questions, checks stakeholders and scope overlaps, and avoids inventing unconfirmed facts. For questions about what to do next or when to involve a specialist, choose **Lifecycle Navigator**; it gives a read-only, evidence-based recommendation. The detailed behavior is covered in the [Business User Guide](docs/business/business-user-guide.md).
Copilot creates English/French pairs, records assumptions and open questions, checks stakeholders and scope overlaps, and avoids inventing unconfirmed facts. For questions about what to do next or when to involve a specialist, choose **Lifecycle Navigator**; it gives a read-only, evidence-based recommendation. The detailed behavior is covered in the [Business User Guide](docs/business/business-user-guide.md).

Share ideas for improving how Copilot works or the supporting tools and workflows in conversation; Copilot records them in the numbered [Ideas Register](docs/ideas/README.md) so you do not have to remember them.

## For Solution Architects

Architecture work sits alongside the business requirements and always links back to them. There are three kinds of architecture document, each written in English and French and kept in the [architecture index](architecture/README.md):

- **Architecture Assessment**: compares options for one decision and recommends one.
- **Architecture Decision Record**: records one important decision, why it was made, and what it costs. Accepted decisions are never rewritten; a new decision replaces them and the history is kept.
- **Solution Design**: explains, only in as much detail as needed, how the chosen approach will be built, tested, deployed, and supported.

Choose **Solution Architecture Writer** in Copilot Chat to draft these, or **Solution Architecture Reviewer** for an independent second opinion. Each document gets a quality score to guide improvement, but the score never blocks it. Only the Solution Architect accepts a decision or approves a design. Copilot also keeps the [System Register](system-register.md) and the links from epics and features up to date. See the [Solution Architect Guide](docs/architecture/solution-architect-guide.md) and the step-by-step [Architect User Guide](docs/architecture/architect-user-guide.md).

## Useful Commands

Use these shortcuts in Copilot Chat when you need a repeatable workflow:

| Command | What it does |
|---|---|
| `/validate <type> <ID>` | Checks the named initiative, epic, feature, story, change-management brief, architecture assessment, decision record, or solution design against its quality checklist and reports specific gaps. |
| `/decompose-initiative <ID>` | Proposes a non-overlapping epic set, refreshes updates automatically, and refreshes again after you confirm before creating files. |
| `/decompose-epic <ID>` | Proposes features for an epic and checks sibling overlap before creating files. |
| `/decompose-feature <ID>` | Proposes user stories for a feature and checks sibling overlap before creating files. |
| `/audit-pack` | Runs a health check across the pack or a named initiative and its descendants (`/audit-pack <initiative ID>`), including which epics and features may need architecture work. |
| `/screen-architecture <type> <ID>` | Tells you whether an initiative, epic, or feature needs a Solution Architect, and if so, the smallest useful next step. Changes nothing. |
| `/record-decision <assessment ID>` | Turns a completed options comparison into a proposed architecture decision, after checking it against earlier decisions. Asks before creating files. |
| `/supersede-decision <decision ID>` | Replaces an accepted architecture decision with a new one while keeping the original for the record, and lists the designs to revisit. |
| `/design-solution <feature ID>` | Proposes a right-sized solution design for a feature and creates it in both languages after you confirm. |
| `/save-my-work` | Updates relevant business/technical documentation, creates a time-stamped release note, then records your changes locally. |
| `/share-my-work` | Gets the latest updates, resolves conflicts, updates documentation, runs checks, then publishes to the shared project after you confirm and verifies success. |
| `/get-latest` | Brings in your teammate's latest changes and tells you what's new; epic creation does this automatically, but you can still run it on demand. |
| `/show-history <document ID>` | Shows who changed a document and when; leave the ID off to see the project's recent history. |
| `/undo-my-last-change` | Safely undoes your last change, always showing you what would be lost first and asking you to confirm. |

Replace the placeholder with an ID from the current project.

## Further Reading

- [Business User Guide](docs/business/business-user-guide.md) and [French guide](docs/business/business-user-guide-fr.md)
- [Business User Cheat Sheet](docs/business/business-user-cheat-sheet.md) and [French sheet](docs/business/business-user-cheat-sheet-fr.md)
- [Solution Architecture](docs/technical/solution-architecture.md)
- [Solution Architect Guide](docs/architecture/solution-architect-guide.md) and [French guide](docs/architecture/solution-architect-guide-fr.md)
- [Architect User Guide](docs/architecture/architect-user-guide.md) and [French guide](docs/architecture/architect-user-guide-fr.md)
- [System Register](system-register.md) and [French register](system-register-fr.md)
- [Tool Behavior and Guarantees](docs/technical/tool-capability-contracts.md)
- [How Work Is Saved and Shared](docs/technical/version-control-adapter.md)
- [How Copilot Uses These Workflows](docs/technical/copilot-interface.md)
- [Latest Release Notes](docs/technical/release-notes/2026-09-27-161924Z-solution-architect-toolkit.md)
- [Release-Note Timestamp Policy](docs/technical/release-notes/2026-09-27-065859Z-release-note-timestamps.md)

## Document Status: Draft → In Review → Approved

Documents progress from **Draft** to **In Review** to **Approved**. Use `/validate <type> <id>` for the readiness score, checklist, and approval decision. Approval requires the artifact-specific quality threshold, completed checklist, and no unresolved critical questions.

## Versioning and Documentation Status

The `Document version` field records the approved baseline; it does not change on every edit. `/validate` can propose a version change for your confirmation. The [Documentation Status Register](documentation-register.md) summarizes document status, active work, and approved baselines.

## Saving and Sharing Your Work

Use `/save-my-work` or `/share-my-work` to have Copilot classify changes, update relevant business and technical documentation, create a time-stamped release note, and include those updates in the saved summary. Share additionally retrieves teammate changes, resolves conflicts, and runs checks; after you confirm, it publishes the intended changes and verifies success. If publishing fails, your local work is preserved and the failure is reported. `/get-latest`, `/show-history`, and `/undo-my-last-change` remain available when needed. The [Business User Guide](docs/business/business-user-guide.md) explains these workflows.

## Who's Involved

Use the [Stakeholder Register](stakeholder-register.md) for governance roles, impacted groups, representative contacts, and their change exposure.

## Folder Structure

- `initiative/` — portfolio-level initiative artifacts
- `epics/` — epic artifacts
- `features/` — feature artifacts
- `stories/` — user story artifacts
- `change-management/` — change-management briefs
- `docs/business/` — practical guides for business users
- `docs/architecture/` — practical guides for Solution Architects
- `docs/technical/` — behavior guarantees, current integrations, architecture, and release notes
- [architecture/](architecture/README.md) — the project's architecture assessments, decision records, and solution designs
- `templates/` — blank starting points (you normally won't need to open these yourself — just ask Copilot to draft something)
- `stakeholder-register.md` — the list of who's involved and who's affected, described above
- [documentation-register.md](documentation-register.md) — current document status, active work, and approved baseline versions

## Suggested Review Order

1. Review and approve the initiative's boundaries and expected outcomes.
2. Validate each epic's objective, value, and dependencies on other epics.
3. Run discovery discussions for each feature.
4. Confirm readiness before breaking a feature down into day-to-day delivery tasks.

## Important

This is a reusable starting point, not an approved organizational standard. Set project-specific baselines, targets, dates, owners, and policies with the appropriate stakeholders; do not treat template examples or placeholders as approved decisions.
