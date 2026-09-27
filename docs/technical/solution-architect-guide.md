# Solution Architect Guide

## Purpose

This guide explains how a Solution Architect can use the Modern BA Practice Markdown Pack to engage at the right point, keep architecture decisions connected to business outcomes, and collaborate with Product Owners, Product Managers, Business Analysts, developers, and delivery roles.

The pack provides business-requirement authoring, review, lifecycle advice, work-management workflows, and a bilingual [System Register](../../system-register.md). It does **not** currently provide a dedicated Solution Architect agent, an architecture-assessment command, or standard ADR and solution-design templates. Use the guidance below with project-approved architecture practices; do not treat the pack as having run an architecture review or connected to Hopex.

## Start With the Business Context

Before proposing a design, review the relevant Initiative, Epic, and Feature, including their outcomes, users, scope, dependencies, open questions, and success measures. Keep business requirements as the source of truth for the problem and desired value.

- Use **BA Requirements Writer** when business context or requirements need drafting or clarification. It can help shape the business artifact; it does not make architecture decisions.
- Use **BA Requirements Reviewer** for an independent, read-only critique of a named business artifact. It does not review a technical design unless asked to inspect relevant technical material.
- Use **Lifecycle Navigator** to ask whether architecture involvement is warranted now. It provides read-only, evidence-based next-step advice; it is not an architecture reviewer or approval authority.
- Consult the [Feature guidance](../../.github/skills/feature-documentation/SKILL.md) to keep Features focused on user-visible capabilities, outcomes, rules, dependencies, and constraints. Record technical decisions in technical documentation, not as implementation prescriptions in the Feature.
- Consult the [Feature guidance](../../.github/skills/feature-documentation/SKILL.md) to keep Features focused on user-visible capabilities, outcomes, rules, dependencies, and constraints. Record technical decisions in technical documentation, not as implementation prescriptions in the Feature.

## Maintain the System Register

When a technical document identifies a confirmed project system, reference it by its stable `SYS-###` ID and canonical name, and link the relevant architecture documents from the [System Register](../../system-register.md). The paired [French register](../../system-register-fr.md) must carry the same ID and factual details.

Copilot is instructed to run [system-register-validation](../../.github/skills/system-register-validation/SKILL.md) when technical/architecture documents are edited and on every `/save-my-work` or `/share-my-work` invocation. For a new or materially changed system, provide:

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

Do not make architecture review a default gate for every Feature. If none of these triggers applies and the approach follows established patterns, record the relevant constraints and let delivery proceed with normal technical review.

## Assess Options and Record Decisions

When assessment is warranted, compare feasible options against the business outcome and project constraints. Consider technology and non-technology options where applicable, including process or policy changes, reuse, configuration, purchase, custom development, and doing nothing.

For each option, capture the relevant tradeoffs: business fit, integration and data impact, security/privacy, quality attributes, operational impact, cost/complexity, delivery risk, and reversibility. State assumptions and unresolved evidence needs; separate recommendations from approved decisions.

Use a lightweight ADR for consequential architecture decisions. At minimum, record context, decision, options considered, rationale, consequences, owner, and date. The pack currently has no ADR template or ADR-specific validation command, so follow the organization's approved format if one exists. Keep solution assessments, ADRs, and designs under `docs/technical/` and link them to the relevant business artifacts; the business tables of contents exclude technical documentation except for the root-level System Register in the Registers section.

## Documenting a Solution

Create technical documents only when they help resolve material uncertainty, communicate a decision, or enable delivery. Keep them in `docs/technical/` and link to the relevant Initiative, Epic, or Feature using its ID and title. Keep business outcomes and user-visible scope in the business artifact; the technical document explains how the selected solution supports them.

### Architecture Assessment

Use an assessment when multiple plausible approaches or material risks need comparison. Record:

- The business capability and linked artifact(s), the decision question, and why assessment is needed now.
- Constraints, assumptions, known standards, and evidence gaps.
- Feasible options, including non-technology options or doing nothing when relevant.
- Evaluation criteria and the tradeoffs for business fit, integration/data, security/privacy, quality attributes, operations, cost/complexity, delivery risk, and reversibility.
- Risks, dependencies, recommendation, unresolved questions, and who owns the decision.

Distinguish a recommendation from an approved decision. The decision authority depends on the organization's governance; do not assume the Solution Architect is the business approver.

### Architecture Decision Record (ADR)

Create an ADR for a consequential architecture decision, not for every design detail. Keep it focused on one decision and include context, the decision, options considered, rationale, consequences, owner, date, and links to affected business artifacts and technical designs. When a decision changes, preserve the earlier rationale and mark its relationship to the newer decision according to the organization's ADR practice.

The pack currently has no standard ADR template or ADR-specific command. Use an organization-approved template if available; otherwise agree a consistent project format before creating multiple ADRs.

### Solution Design

After the approach is agreed, document only the design depth needed to communicate, build, test, deploy, and operate the solution. Include applicable elements such as:

- System context, components, responsibilities, and boundaries.
- Interfaces, integrations, data flows, ownership, and migration.
- Security, privacy, accessibility, and relevant non-functional requirements.
- Deployment, monitoring, support, failure handling, recovery, and rollback.
- Dependencies, assumptions, unresolved decisions, and links to the ADRs and business artifacts.

Trace each significant design choice to a business outcome or constraint, and trace delivery work back to the design only where that improves implementation or verification. `/decompose-feature` and `/validate feature` operate on business Features and Stories; they do not assess architecture documents. Use qualified peer or governance review for technical quality decisions.

## Connect Design to Delivery

Once the direction is agreed, keep the design proportionate to risk and complexity. Address the applicable system context, components, data flows, integrations, security/privacy, deployment, operations, and quality attributes. Avoid designing detail that does not reduce uncertainty or enable delivery.

Link the selected architecture back to the Feature outcomes and constraints. Help the Product Owner and Business Analyst decompose the Feature into Stories; `/decompose-feature <feature ID>` proposes Stories and checks their sibling overlap. `/validate feature <feature ID>` checks the business Feature against its practice guidance; it does not validate an architecture design. Coordinate with developers, QA, UX, Security, Data, Operations, and Change Management when their expertise is relevant.

Before release, confirm that architecture-relevant requirements have evidence in tests, deployment and rollback plans, monitoring, support ownership, and operational readiness. After release, review adoption and outcome measures with the product roles and use production evidence to revisit assumptions or decisions.

## Useful Workflows

| Need | Existing workflow |
|---|---|
| Decide whether to engage now | Select **Lifecycle Navigator** and ask it to assess the available evidence and risks. |
| Clarify business outcomes or constraints | Work with the Product Owner/Business Analyst and, when appropriate, **BA Requirements Writer**. |
| Review business requirement quality | `/validate <type> <ID>` or **BA Requirements Reviewer** for an independent read-only critique. |
| Break a Feature into delivery Stories | `/decompose-feature <feature ID>`; confirm the proposed Stories before creation. |
| Check the broader business portfolio | `/audit-pack` or `/audit-pack <initiative ID>`. |
| Record, share, or inspect documentation changes | `/save-my-work`, `/share-my-work`, and `/show-history`; technical documents and decisions should be included when affected. |

See [Tool Capability Contracts](tool-capability-contracts.md) for behavior guarantees, [Copilot Interface](copilot-interface.md) for the available assistants and commands, and [Solution Architecture](solution-architecture.md) for the pack's component map.