# EPIC-004 | Workflow and Case Management

*[Lire ce document en français](epic-004-workflow-and-case-management-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Change management brief:** [CM-EPIC-004 Workflow and Case Management](../change-management/cm-epic-004-workflow-and-case-management.md)

## 1. Epic Summary
Coordinate onboarding activities, ownership, exceptions, and service targets across teams.

**Expected value:** Clearer accountability, fewer stalled cases, and more predictable handoffs.

## 2. Problem / Opportunity
The current onboarding journey includes manual exchanges, fragmented information, delayed validation, and limited status visibility. This epic addresses the portion of that problem described in the objective above.

## 3. Epic Hypothesis
We believe that coordinate onboarding activities, ownership, exceptions, and service targets across teams. This should contribute to clearer accountability, fewer stalled cases, and more predictable handoffs. The hypothesis must be tested through approved feature KPIs and initiative outcomes.

## 4. Scope
### In scope
- **Automated Work Routing:** Assign work based on case attributes, role, and routing rules.
- **Task, Milestone, and SLA Tracking:** Track required work, due dates, milestones, and service-level status.
- **Exception and Escalation Management:** Create, route, and monitor exceptions that require intervention.

### Out of scope
- Capabilities assigned to another epic in INIT-001.
- Final technical design and vendor selection.
- Unapproved policy, legal, privacy, security, or operational changes.

## 5. Features
| Feature | Purpose |
|---|---|
| [FEAT-013 Automated Work Routing](../features/feat-013-automated-work-routing.md) | Assign work based on case attributes, role, and routing rules. |
| [FEAT-014 Task, Milestone, and SLA Tracking](../features/feat-014-task,-milestone,-and-sla-tracking.md) | Track required work, due dates, milestones, and service-level status. |
| [FEAT-015 Exception and Escalation Management](../features/feat-015-exception-and-escalation-management.md) | Create, route, and monitor exceptions that require intervention. |

## 6. Epic Success Measures
- Contribution to the parent initiative's cycle-time, completeness, manual-handling, rework, satisfaction, and adoption measures.
- Feature-level KPIs are defined in each Feature Canvas.
- Baselines, targets, measurement frequency, and data owners must be approved before implementation.

## 7. Stakeholders
- Product Manager and Product Owner
- Business Analyst and relevant business SMEs
- Solution Architecture, UX, Data, Security, Privacy, Compliance, Delivery, and QA
- Affected operational teams and external users, where applicable

## 8. Dependencies
- Approved parent initiative scope and priorities.
- Cross-epic process, data, identity, document, notification, workflow, and reporting decisions.
- Required governance and control approvals.

## 9. Risks and Assumptions
- **Risk:** business rules remain unresolved. **Response:** maintain a decision log with due dates and owners.
- **Risk:** feature teams optimize locally. **Response:** review end-to-end journey and shared KPIs.
- **Assumption:** authorized sponsor, broker, and employee roles can be defined; this requires validation.

## 10. Readiness Criteria
- [ ] Epic objective and boundaries approved
- [ ] Features identified and linked
- [ ] Outcome metrics and measurement ownership agreed
- [ ] Cross-epic dependencies assigned
- [ ] Major business, architectural, control, and change risks reviewed