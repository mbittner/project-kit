# EPIC-001 | Digital Group Setup and Data Collection

*[Lire ce document en français](epic-001-digital-group-setup-and-data-collection-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Change management brief:** [CM-EPIC-001 Digital Group Setup and Data Collection](../change-management/cm-epic-001-digital-group-setup-and-data-collection.md)

## 1. Epic Summary
Enable plan sponsors to submit complete group setup information through a guided digital experience.

**Expected value:** Faster intake, improved completeness, fewer manual exchanges, and earlier validation.

## 2. Problem / Opportunity
The current onboarding journey includes manual exchanges, fragmented information, delayed validation, and limited status visibility. This epic addresses the portion of that problem described in the objective above.

## 3. Epic Hypothesis
We believe that enable plan sponsors to submit complete group setup information through a guided digital experience. This should contribute to faster intake, improved completeness, fewer manual exchanges, and earlier validation. The hypothesis must be tested through approved feature KPIs and initiative outcomes.

## 4. Scope
### In scope
- **Online Group Setup Wizard:** Guide the sponsor through company, division, class, billing, and submission information.
- **Census File Upload:** Allow structured employee census data to be uploaded and reviewed.
- **Real-Time Data Validation:** Validate required fields, formats, and cross-field rules before submission.
- **Save and Resume:** Allow an authorized user to save progress and return later.
- **Submission Review and Attestation:** Present a consolidated review and capture confirmation before submission.
- **Submission Confirmation and Notifications:** Confirm receipt and notify relevant parties of the next step.

### Out of scope
- Capabilities assigned to another epic in INIT-001.
- Final technical design and vendor selection.
- Unapproved policy, legal, privacy, security, or operational changes.

## 5. Features
| Feature | Purpose |
|---|---|
| [FEAT-001 Online Group Setup Wizard](../features/feat-001-online-group-setup-wizard.md) | Guide the sponsor through company, division, class, billing, and submission information. |
| [FEAT-002 Census File Upload](../features/feat-002-census-file-upload.md) | Allow structured employee census data to be uploaded and reviewed. |
| [FEAT-003 Real-Time Data Validation](../features/feat-003-real-time-data-validation.md) | Validate required fields, formats, and cross-field rules before submission. |
| [FEAT-004 Save and Resume](../features/feat-004-save-and-resume.md) | Allow an authorized user to save progress and return later. |
| [FEAT-005 Submission Review and Attestation](../features/feat-005-submission-review-and-attestation.md) | Present a consolidated review and capture confirmation before submission. |
| [FEAT-006 Submission Confirmation and Notifications](../features/feat-006-submission-confirmation-and-notifications.md) | Confirm receipt and notify relevant parties of the next step. |

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