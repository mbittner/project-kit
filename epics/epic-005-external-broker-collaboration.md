# EPIC-005 | External Broker Collaboration

*[Lire ce document en français](epic-005-external-broker-collaboration-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Change management brief:** [CM-EPIC-005 External Broker Collaboration](../change-management/cm-epic-005-external-broker-collaboration.md)

## 1. Epic Summary
Allow authorized brokers to contribute information and collaborate on onboarding without relying on unstructured email exchanges.

**Expected value:** Improved collaboration, fewer duplicate requests, and clearer responsibility between broker and sponsor.

## 2. Problem / Opportunity
The current onboarding journey includes manual exchanges, fragmented information, delayed validation, and limited status visibility. This epic addresses the portion of that problem described in the objective above.

## 3. Epic Hypothesis
We believe that allow authorized brokers to contribute information and collaborate on onboarding without relying on unstructured email exchanges. This should contribute to improved collaboration, fewer duplicate requests, and clearer responsibility between broker and sponsor. The hypothesis must be tested through approved feature KPIs and initiative outcomes.

## 4. Scope
### In scope
- **Broker Access and Delegation:** Provide role-based broker access to assigned onboarding cases.
- **Shared Information Requests:** Allow sponsors and brokers to respond to assigned requests with a visible owner and status.
- **Collaboration History and Notifications:** Maintain a record of requests and notify participants of relevant changes.

### Out of scope
- Capabilities assigned to another epic in INIT-001.
- Final technical design and vendor selection.
- Unapproved policy, legal, privacy, security, or operational changes.

## 5. Features
| Feature | Purpose |
|---|---|
| [FEAT-016 Broker Access and Delegation](../features/feat-016-broker-access-and-delegation.md) | Provide role-based broker access to assigned onboarding cases. |
| [FEAT-017 Shared Information Requests](../features/feat-017-shared-information-requests.md) | Allow sponsors and brokers to respond to assigned requests with a visible owner and status. |
| [FEAT-018 Collaboration History and Notifications](../features/feat-018-collaboration-history-and-notifications.md) | Maintain a record of requests and notify participants of relevant changes. |

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