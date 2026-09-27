# Solution Architect Guide

## Purpose

This guide explains how a Solution Architect can use the Modern BA Practice Markdown Pack to engage at the right point, keep architecture decisions connected to business outcomes, and collaborate with Product Owners, Product Managers, Business Analysts, developers, and delivery roles.

The pack provides business-requirement authoring, review, lifecycle advice, and work-management workflows, plus a dedicated architecture toolkit: the **Solution Architecture Writer** and **Solution Architecture Reviewer** assistants, bilingual templates for Architecture Assessments, ADRs, and Solution Designs, architecture commands, integrity checks, and the bilingual [System Register](../../system-register.md). Architecture work lives under [`architecture/`](../../architecture/README.md). The pack has no Hopex integration; do not treat it as having looked up Hopex or as replacing organizational architecture governance.

## Start With the Business Context

Before proposing a design, review the relevant Initiative, Epic, and Feature, including their outcomes, users, scope, dependencies, open questions, and success measures. Keep business requirements as the source of truth for the problem and desired value.

- Use **BA Requirements Writer** when business context or requirements need drafting or clarification. It can help shape the business artifact; it does not make architecture decisions.
- Use **BA Requirements Reviewer** for an independent, read-only critique of a named business artifact. It does not review a technical design unless asked to inspect relevant technical material.
- Use **Lifecycle Navigator** to ask whether architecture involvement is warranted now. It provides read-only, evidence-based next-step advice; it is not an architecture reviewer or approval authority.
- Consult the [Feature guidance](../../.github/skills/feature-documentation/SKILL.md) to keep Features focused on user-visible capabilities, outcomes, rules, dependencies, and constraints. Record technical decisions in technical documentation, not as implementation prescriptions in the Feature.
- Consult the [Feature guidance](../../.github/skills/feature-documentation/SKILL.md) to keep Features focused on user-visible capabilities, outcomes, rules, dependencies, and constraints. Record technical decisions in technical documentation, not as implementation prescriptions in the Feature.

## Maintain the System Register

When a technical document identifies a confirmed project system, reference it by its stable `SYS-###` ID and canonical name, and link the relevant architecture documents from the [System Register](../../system-register.md). The paired [French register](../../system-register-fr.md) must carry the same ID and factual details.

Copilot is instructed to run [system-register-validation](../../.github/skills/system-register-validation/SKILL.md) when architecture documents are edited and on every `/save-my-work` or `/share-my-work` invocation. For a new or materially changed system, provide:

- The accountable system owner.
- The CMCD real name/ID.
- A Hopex system name/ID if available; this reference is optional.

If the owner or CMCD information is unavailable, the register records `To confirm` and adds a specific open question assigned to the Solution Architect. This does not block documenting or saving the architecture work. Do not infer values or claim Hopex was checked; the current workspace has no Hopex integration.

The register is for project systems, not every vendor, library, programming language, API, or component mentioned in a design. Confirm ambiguous candidates before registering them.

## When to Engage

Architecture input is most useful when a decision has material technical uncertainty or cross-cutting risk. Examples include:

- New or changed system integrations, APIs, or vendor/build/buy choices.
- Data ownership, migration, residency, or retention concerns.
- Security, privacy, regulatory, or identity implications.
- Significant availability, performance, accessibility, scalability, or resilience needs.
- A departure from established architecture, platform standards, or operational practices.
- A decision that is costly or difficult to reverse.

Do not make architecture review a default gate for every Feature. If none of these triggers applies and the approach follows established patterns, record the relevant constraints and let delivery proceed with normal technical review. Run `/screen-architecture <type> <id>` to apply these triggers consistently; it also checks whether an existing Accepted ADR or design already covers the work.

## Architecture Artifacts at a Glance

| Artifact | Folder and ID | Lifecycle | Created with |
|---|---|---|---|
| Architecture Assessment | `architecture/assessments/`, `ARCH-XXX` | Draft → In Review → Recommended → Closed | Solution Architecture Writer |
| Architecture Decision Record | `architecture/decisions/`, `ADR-XXX` | Proposed → Accepted / Rejected → Superseded / Deprecated | `/record-decision`, `/supersede-decision`, or the Writer |
| Solution Design | `architecture/designs/`, `SD-XXX` | Draft → In Review → Approved, with baseline versions | `/design-solution` or the Writer |

Every artifact ships as an English/French pair, links to at least one Initiative, Epic, or Feature (which links back under `Architecture references`), and is listed in the [architecture index](../../architecture/README.md). Each has a quality score from `/validate assessment|adr|design <id>`; **the score is advisory and never blocks a status change.** The status gate depends on a complete checklist, no unresolved clarification markers, and no open questions. As Solution Architect, you alone accept ADRs, recommend assessments, and approve designs. Copilot never does this without your explicit confirmation.

## Assess Options and Record Decisions

When assessment is warranted, compare feasible options against the business outcome and project constraints. Consider technology and non-technology options where applicable, including process or policy changes, reuse, configuration, purchase, custom development, and doing nothing.

For each option, capture the relevant tradeoffs: business fit, integration and data impact, security/privacy, quality attributes, operational impact, cost/complexity, delivery risk, and reversibility. State assumptions and unresolved evidence needs; separate recommendations from approved decisions.

Use an ADR for consequential architecture decisions, drafted from the [ADR template](../../templates/adr-template.md). Keep assessments, ADRs, and designs under `architecture/` and link them to the relevant business artifacts; the business tables of contents exclude technical documentation except for the root-level System Register in the Registers section.

## Documenting a Solution

Create technical documents only when they help resolve material uncertainty, communicate a decision, or enable delivery. Keep them in `architecture/` and link to the relevant Initiative, Epic, or Feature using its ID and title. Keep business outcomes and user-visible scope in the business artifact; the technical document explains how the selected solution supports them.

### Architecture Assessment

Use an assessment when multiple plausible approaches or material risks need comparison. Record:

- The business capability and linked artifact(s), the decision question, and why assessment is needed now.
- Constraints, assumptions, known standards, and evidence gaps.
- Feasible options, including non-technology options or doing nothing when relevant.
- Evaluation criteria and the tradeoffs for business fit, integration/data, security/privacy, quality attributes, operations, cost/complexity, delivery risk, and reversibility.
- Risks, dependencies, recommendation, unresolved questions, and who owns the decision.

Distinguish a recommendation from an approved decision. In this pack, the Solution Architect records and accepts the resulting decision in an ADR; `/record-decision <assessment ID>` drafts it from a Recommended assessment. Use the [assessment template](../../templates/arch-assessment-template.md).

### Architecture Decision Record (ADR)

Create an ADR for a consequential architecture decision, not for every design detail. Keep it focused on one decision and include context, the decision, options considered, rationale, consequences, owner, date, and links to affected business artifacts and technical designs. Once Accepted, an ADR's substance is not edited: when a decision changes, run `/supersede-decision <ADR ID>` to create a new ADR, which preserves the earlier rationale and links both records.

### Solution Design

After the approach is agreed, document only the design depth needed to communicate, build, test, deploy, and operate the solution. Include applicable elements such as:

- System context, components, responsibilities, and boundaries.
- Interfaces, integrations, data flows, ownership, and migration.
- Security, privacy, accessibility, and relevant non-functional requirements.
- Deployment, monitoring, support, failure handling, recovery, and rollback.
- Dependencies, assumptions, unresolved decisions, and links to the ADRs and business artifacts.

Trace each significant design choice to a business outcome or constraint, and trace delivery work back to the design only where that improves implementation or verification. Use `/design-solution <feature ID>` to propose a design from the [Solution Design template](../../templates/solution-design-template.md) and `/validate design <id>` to check it. Solution Designs carry baseline versions and appear in the [Documentation Status Register](../../documentation-register.md). For an independent critique, choose **Solution Architecture Reviewer**.

## Connect Design to Delivery

Once the direction is agreed, keep the design proportionate to risk and complexity. Address the applicable system context, components, data flows, integrations, security/privacy, deployment, operations, and quality attributes. Avoid designing detail that does not reduce uncertainty or enable delivery.

Link the selected architecture back to the Feature outcomes and constraints. Help the Product Owner and Business Analyst decompose the Feature into Stories; `/decompose-feature <feature ID>` proposes Stories and checks their sibling overlap. `/validate feature <feature ID>` checks the business Feature against its practice guidance; it does not validate an architecture design. Coordinate with developers, QA, UX, Security, Data, Operations, and Change Management when their expertise is relevant.

Before release, confirm that architecture-relevant requirements have evidence in tests, deployment and rollback plans, monitoring, support ownership, and operational readiness. After release, review adoption and outcome measures with the product roles and use production evidence to revisit assumptions or decisions.

## Useful Workflows

| Need | Existing workflow |
|---|---|
| Decide whether to engage now | `/screen-architecture <type> <ID>`, or select **Lifecycle Navigator** for broader next-step advice. |
| Compare options for a decision | Ask **Solution Architecture Writer** to draft an Architecture Assessment; check it with `/validate assessment <ID>`. |
| Record a decision | `/record-decision <assessment ID>`, or ask the Writer for an ADR when no assessment is needed; check it with `/validate adr <ID>`. |
| Change an accepted decision | `/supersede-decision <ADR ID>`. |
| Document the solution | `/design-solution <feature ID>`; check it with `/validate design <ID>`. |
| Get a second opinion on architecture | Select **Solution Architecture Reviewer**. |
| Check architecture coverage across the portfolio | `/audit-pack` includes an architecture coverage section. |
| Clarify business outcomes or constraints | Work with the Product Owner/Business Analyst and, when appropriate, **BA Requirements Writer**. |
| Review business requirement quality | `/validate <type> <ID>` or **BA Requirements Reviewer** for an independent read-only critique. |
| Break a Feature into delivery Stories | `/decompose-feature <feature ID>`; confirm the proposed Stories before creation. |
| Check the broader business portfolio | `/audit-pack` or `/audit-pack <initiative ID>`. |
| Record, share, or inspect documentation changes | `/save-my-work`, `/share-my-work`, and `/show-history`; technical documents and decisions should be included when affected. |

See [Tool Capability Contracts](tool-capability-contracts.md) for behavior guarantees, [Copilot Interface](copilot-interface.md) for the available assistants and commands, and [Solution Architecture](solution-architecture.md) for the pack's component map.