# SD-XXX | Solution Design: <Solution Name>

*[Lire ce document en français](solution-design-template-fr.md)*

> **Document status:** Draft  
> **Document version:** Not baselined  
> **Last validated:** Not recorded  
> **Solution Architect:** <name, to confirm>  
> **Linked business artifacts:** [FEAT-XXX <Feature Name>](../../features/feat-XXX-slug.md)  
> **Governing decisions:** [ADR-XXX <Decision Title>](../decisions/adr-XXX-slug.md), or None  
> **Related systems:** <SYS-### — Canonical system name>, or None identified  
> **Important:** This is a template. Populate every bracketed placeholder and remove guidance text before publishing. Keep the design proportionate: complete only the depth needed to build, test, deploy, and operate the solution, and mark a section "Not applicable (<reason>)" rather than leaving it silent.  
> **Status gate:** Valid values are Draft, In Review, Approved. Only set Approved after `/validate design <id>` confirms the Approval Checklist is complete, no `[NEEDS CLARIFICATION]` markers remain, and no Open Questions Log item is still Open — then replace `Not recorded` with `> **Last validated:** <date> — Score <NN>/100 (<Rating>)`. The score is advisory and never blocks approval.

## 1. Scope and Traceability
*(Mandatory)* What this design covers and does not cover. Trace each significant design element to a business outcome, acceptance criterion, constraint, or ADR. A design must not add user-visible scope; raise any gap with the Product Owner.

| Design element | Traces to |
|---|---|
| *(element)* | *(FEAT-XXX acceptance criterion, constraint, or ADR-XXX)* |

## 2. System Context and Boundaries
*(Mandatory)* Systems, users, and external parties involved, and the boundary of this solution. A diagram is encouraged.

```mermaid
flowchart LR
    User[User role] --> Solution[This solution]
    Solution --> SystemA[SYS-### — System]
```

## 3. Components and Responsibilities
*(Mandatory)*

| Component | Responsibility | Owned by |
|---|---|---|
| *(component)* | *(responsibility)* | *(team, to confirm)* |

## 4. Interfaces and Integrations
*(Mandatory — "Not applicable (<reason>)" is acceptable)*

| Interface | From → To | Style (sync/async/batch/file) | Data exchanged | Failure handling |
|---|---|---|---|---|
| *(interface)* | *(SYS-### → SYS-###)* | *(style)* | *(data)* | *(retry, fallback, alert)* |

## 5. Data
*(Mandatory)* Data flows, system of record and ownership, classification, migration, retention, and deletion.

## 6. Security, Privacy, and Accessibility
*(Mandatory)* Authentication and authorization, least privilege, data protection in transit and at rest, privacy impacts, audit logging, and accessibility obligations. State "Not applicable (<reason>)" explicitly where true.

## 7. Non-Functional Requirements
*(Mandatory)* Never invent targets; use "To confirm".

| Quality attribute | Requirement or target | Source | How it will be verified |
|---|---|---|---|
| Availability | *(target, to confirm)* | *(business artifact or standard)* | *(test or monitor)* |
| Performance | | | |
| Scalability | | | |
| Resilience and recovery | | | |

## 8. Deployment and Operations
*(Mandatory)* Environments, deployment approach, monitoring and alerting, support ownership, failure handling, backup and recovery, and rollback.

## 9. Verification Approach
*(Mandatory)* How the design will be demonstrated to work: which tests or evidence show that the NFRs, integrations, and security controls are met.

## 10. Dependencies, Assumptions, and Risks
*(Mandatory)*

| Type | Item | Impact | Response or owner |
|---|---|---|---|
| Dependency / Assumption / Risk | *(item)* | High / Medium / Low | *(response or owner)* |

## 11. Open Questions Log
*(Conditional — keep the table only when questions remain.)*

| Question | Why It Matters | Decision Needed By | Suggested Owner | Status |
|---|---|---|---|---|
| *(question)* | *(impact)* | *(date, to confirm)* | *(role)* | Open / Resolved |

## 12. Approval Checklist
- [ ] Linked to at least one business artifact, and every significant design element traces to an outcome, criterion, constraint, or ADR
- [ ] Adds no user-visible scope beyond the linked business artifacts
- [ ] System context and boundaries are clear
- [ ] Interfaces, integrations, and data ownership are documented or marked not applicable with a reason
- [ ] Security, privacy, and accessibility addressed explicitly
- [ ] Non-functional requirements stated with a source and verification method, or "To confirm"
- [ ] Deployment, monitoring, support ownership, and rollback addressed
- [ ] Governing ADRs linked and consistent with the design
- [ ] Related systems cited as `SYS-### — Name` and reconciled with the System Register
- [ ] Depth is proportionate to risk and complexity
- [ ] Delivery team reviewed feasibility
