---
name: solution-design-documentation
description: "Use when drafting, reviewing, quality-scoring, or approving a Solution Design (SD-XXX) in architecture/designs/, or when explaining what makes a good solution design — scope and traceability, system context, components, interfaces and integrations, data, security/privacy/accessibility, non-functional requirements, deployment and operations, verification, dependencies, and risks. Trigger phrases: new solution design, design the solution, technical design, integration design, is this design ready, approve design, what makes a good solution design."
---

# Solution Design Documentation

## What a Solution Design Is

A **Solution Design** explains how a selected approach delivers one or more business Features. It gives only the depth needed to build, test, deploy, and operate the solution. It follows the relevant ADRs and never redefines business scope.

## Where It Lives in This Repo

- Folder: `architecture/designs/`
- Filename: `sd-XXX-slug.md` + `sd-XXX-slug-fr.md`
- Template: [templates/solution-design-template.md](../../../templates/solution-design-template.md) and [templates/solution-design-template-fr.md](../../../templates/solution-design-template-fr.md)
- Index: [architecture/README.md](../../../architecture/README.md) and [architecture/README-fr.md](../../../architecture/README-fr.md)
- Solution Designs carry a `Document version` baseline and appear in the [Documentation Status Register](../../../documentation-register.md). They follow the [Approved Baselines contract](../../../docs/technical/tool-capability-contracts.md#approved-baselines).

## Workflow

1. **Confirm the linked business artifacts and governing ADRs.** If a consequential decision has no ADR yet, record the ADR first or list it as an open question.
2. **Find the next free `SD-XXX` ID** with `check-ids.ps1`.
3. **Copy both templates.** Mark any section that does not apply "Not applicable (<reason>)".
4. **Draft Scope and Traceability first**, then context, then detail.
5. **Run the guardrails**, [system-register-validation](../system-register-validation/SKILL.md), [architecture-decision-consistency](../architecture-decision-consistency/SKILL.md) against governing and related ADRs, and [architecture-traceability-validation](../architecture-traceability-validation/SKILL.md).
6. **Score** and report the gaps. The score is advisory.
7. **Update the index, the governing ADRs' Affected Designs, and backlinks.** Then run `check-parity.ps1`, `check-links.ps1`, `check-document-headers.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`, `check-system-mentions.ps1`, and `generate-documentation-register.ps1`.

## Mandatory Sections

Scope and Traceability · System Context and Boundaries · Components and Responsibilities · Interfaces and Integrations · Data · Security, Privacy, and Accessibility · Non-Functional Requirements · Deployment and Operations · Verification Approach · Dependencies, Assumptions, and Risks · Approval Checklist. Open Questions Log is conditional.

## Guardrail 1: No Business Scope Creep

A design cannot add, remove, or reinterpret user-visible behavior. When the design reveals a scope gap or conflict, record it as an open question for the Product Owner and leave the Feature unchanged.

## Guardrail 2: Every Significant Choice Is Traceable

Each significant design element traces to a business outcome, acceptance criterion, constraint, or ADR. A consequential choice with no ADR is flagged. The design must not contradict its governing ADRs.

## Guardrail 3: Quality Attributes Are Explicit

Security, privacy, accessibility, and each relevant non-functional requirement are addressed, or marked "Not applicable (<reason>)". Targets come from a source or are "To confirm". Each NFR has a verification method.

## Guardrail 4: Operable, Not Just Buildable

The design covers deployment, monitoring, support ownership, failure handling, recovery, and rollback, proportionate to risk.

## Guardrail 5: Systems and Ownership Are Grounded

Systems are cited as `SYS-### — Name` and reconciled with the System Register. Component and support owners are "To confirm" unless stated. Never guess.

## Guardrail 6: Proportionality

Depth matches risk and complexity. Do not document detail that reduces no uncertainty and enables no delivery activity. A design that restates the template with no project-specific content fails this guardrail.

## For AI Generation

1. Build context from the linked Features, governing ADRs, and the System Register.
2. Use at most 5 `[NEEDS CLARIFICATION: ...]` markers, in this priority order: linked business artifact > governing decision > system boundary or owner > security/privacy obligation > NFR target. Log the rest.
3. Default the NFR table to availability, performance, scalability, and resilience with "To confirm" targets. Remove only rows the user confirms are irrelevant.

## Quality Scoring Model

Rate each dimension 0–5, then `points = (rating / 5) × weight`.

| Dimension | Weight |
|---|---:|
| Scope and traceability | 15 |
| System context and boundaries | 15 |
| Interfaces, integrations, and data | 15 |
| Security, privacy, and NFRs | 15 |
| Deployment and operations | 15 |
| Decisions, dependencies, and risks | 10 |
| Verification approach | 10 |
| Proportionality | 5 |
| **Total** | **100** |

| Score | Rating |
|---:|---|
| 85–100 | Build-ready |
| 70–84 | Conditionally build-ready |
| 50–69 | Needs refinement |
| Below 50 | Not ready |

**The score is advisory and never blocks approval.** Always list the gaps.

## Litmus Test

1. Which Features does this design deliver, and which ADRs govern it?
2. What are the system boundaries, and which systems are involved?
3. How does data move, and who owns it?
4. How are security, privacy, and the key NFRs met and verified?
5. How is it deployed, monitored, supported, and rolled back?
6. What remains open, and who owns it?

## Status Gate

Statuses: **Draft → In Review → Approved**, with baseline versions.

- `Approved` requires: Approval Checklist fully checked, zero `[NEEDS CLARIFICATION]` markers, and no Open Questions Log item still Open. Replace `Not recorded` with `> **Last validated:** <date> — Score <NN>/100 (<Rating>)`. The score does not gate approval.
- Follow `/validate`'s baseline-version proposal flow: `1.0` on first approval, minor for changes within the same scope, major for a material scope or architecture change. Apply it only after the user confirms. Then run `generate-documentation-register.ps1`.
- `check-checklists.ps1` and `check-document-headers.ps1` re-verify the gate and header parity.
