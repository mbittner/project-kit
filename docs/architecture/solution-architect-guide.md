# Solution Architect Guide

*[Lire ce guide en français](solution-architect-guide-fr.md)*

## Purpose

This guide is for Solution Architects working in this pack. It explains when to engage, which architecture document to use, how to work with the Product Owner and Business Analyst, and which decisions stay with you. The rules Copilot follows are defined in the architecture guidance files linked below; this guide does not repeat them.

Business requirements (Initiative → Epic → Feature → User Story) remain the source of truth for the problem, users, outcomes, and scope. Architecture documents explain how the selected solution supports them and always link back.

## How the Help Is Organized

| Help | Use it for |
|---|---|
| **Solution Architecture Writer** | Drafting, updating, and superseding assessments, decision records, and designs under [technical/](../../technical/README.md) |
| **Solution Architecture Reviewer** | An independent, read-only critique of one architecture document |
| **Lifecycle Navigator** | Read-only advice on what to do next, including whether you are needed at all |
| **BA Requirements Writer** / **BA Requirements Reviewer** | Clarifying or reviewing the business artifact your work depends on |

Copilot keeps each document in English and French, keeps the [architecture index](../../technical/README.md) current, adds `Architecture references` links to the related Epic or Feature, and reconciles every system you name with the [System Register](../../system-register.md).

## When to Engage

Engage when a decision carries material architecture uncertainty or cross-cutting risk: new integrations, data ownership or migration, security or privacy impact, significant non-functional needs, vendor or build/buy choices, a departure from standards, or a decision that is hard to reverse. Architecture review is not a default gate for every Feature.

Run `/screen-architecture <type> <ID>` to apply these triggers consistently. It tells you whether architecture work is needed, whether an existing decision or design already covers it, and the smallest useful next step. The full trigger list is in [architecture-screening](../../.github/skills/architecture-screening/SKILL.md).

## Architecture Documents at a Glance

| Document | Use it when | Lifecycle | Guidance |
|---|---|---|---|
| **Architecture Assessment** (`ARCH-XXX`) | Two or more plausible options need comparing | Draft → In Review → Recommended → Closed | [Assessment guidance](../../.github/skills/architecture-assessment-documentation/SKILL.md) |
| **Architecture Decision Record** (`ADR-XXX`) | A consequential decision must be recorded | Proposed → Accepted / Rejected → Superseded / Deprecated | [ADR guidance](../../.github/skills/adr-documentation/SKILL.md) |
| **Solution Design** (`SD-XXX`) | Delivery needs a shared design to build, test, deploy, and operate | Draft → In Review → Approved, with baseline versions | [Design guidance](../../.github/skills/solution-design-documentation/SKILL.md) |

Each document has a quality score from `/validate assessment|adr|design <ID>`. The score shows where to improve; it never blocks a status change. The status gate requires a complete checklist, no unresolved clarification markers, and no open questions.

## Example: From Feature to Design

The [Architect User Guide](architect-user-guide.md) walks step by step through an illustrative Feature: screening, assessment, system registration, decision, design, baseline approval, and later superseding the decision. It describes what Copilot checks at each step and what you gain.

## Connect Design to Delivery

- Help the Product Owner and Business Analyst break the Feature into Stories (`/decompose-feature <ID>`). Trace delivery work to the design only where that helps implementation or testing.
- Involve developers, QA, UX, Security, Data, Operations, and Change Management when their expertise is relevant.
- Before release, confirm there is evidence for architecture-relevant requirements: tests, deployment and rollback plans, monitoring, support ownership, and operational readiness.
- After release, review outcome measures with the product roles. Use production evidence to revisit assumptions; record changed decisions by superseding them.

## What Still Needs Your Judgment

Copilot structures, compares, checks, and flags. It does not decide.

- **Only you** accept a decision, recommend an assessment, or approve a design, and only after you explicitly confirm it.
- **You supply the facts** Copilot must not guess: system owners, CMCD names and IDs, costs, volumes, service levels, vendor terms, and dates. Hopex references are optional, and the pack has no Hopex connection. Missing values are recorded as `To confirm` with an open question and do not block your work.
- **You judge proportionality.** Deciding that no document is needed is a valid outcome.
- **Scope stays with the Product Owner.** Raise gaps; do not redefine the Feature in a design.

## Useful Commands

| Need | Command or assistant |
|---|---|
| Decide whether to engage | `/screen-architecture <type> <ID>` or **Lifecycle Navigator** |
| Compare options | **Solution Architecture Writer**, then `/validate assessment <ID>` |
| Record a decision | `/record-decision <assessment ID>`, or the Writer when no assessment is needed; then `/validate adr <ID>` |
| Change an accepted decision | `/supersede-decision <ADR ID>` |
| Document the solution | `/design-solution <feature ID>`, then `/validate design <ID>` |
| Get a second opinion | **Solution Architecture Reviewer** |
| Check the whole portfolio | `/audit-pack`, which includes an architecture coverage section |
| Save, share, or view history | `/save-my-work`, `/share-my-work`, `/show-history` |

See also the [Solution Architecture](../technical/solution-architecture.md) component map and the [Tool Capability Contracts](../technical/tool-capability-contracts.md#architecture-decisions).
