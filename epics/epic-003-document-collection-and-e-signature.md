# EPIC-003 | Document Collection and E-Signature

*[Lire ce document en français](epic-003-document-collection-and-e-signature-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Change management brief:** [CM-EPIC-003 Document Collection and E-Signature](../change-management/cm-epic-003-document-collection-and-e-signature.md)

## 1. Epic Summary
Provide a controlled digital process for requesting, receiving, signing, and tracking onboarding documents.

**Expected value:** Fewer email attachments, better document completeness, and improved auditability.

## 2. Problem / Opportunity
The current onboarding journey includes manual exchanges, fragmented information, delayed validation, and limited status visibility. This epic addresses the portion of that problem described in the objective above.

## 3. Epic Hypothesis
We believe that provide a controlled digital process for requesting, receiving, signing, and tracking onboarding documents. This should contribute to fewer email attachments, better document completeness, and improved auditability. The hypothesis must be tested through approved feature KPIs and initiative outcomes.

## 4. Scope
### In scope
- **Document Checklist and Secure Upload:** Show required documents and support secure submission.
- **Document Review and Version Status:** Allow authorized reviewers to classify documents as received, accepted, or requiring correction.
- **Electronic Signature Workflow:** Send eligible documents for signature and track completion status.

### Out of scope
- Capabilities assigned to another epic in INIT-001.
- Final technical design and vendor selection.
- Unapproved policy, legal, privacy, security, or operational changes.

## 5. Features
| Feature | Purpose |
|---|---|
| [FEAT-010 Document Checklist and Secure Upload](../features/feat-010-document-checklist-and-secure-upload.md) | Show required documents and support secure submission. |
| [FEAT-011 Document Review and Version Status](../features/feat-011-document-review-and-version-status.md) | Allow authorized reviewers to classify documents as received, accepted, or requiring correction. |
| [FEAT-012 Electronic Signature Workflow](../features/feat-012-electronic-signature-workflow.md) | Send eligible documents for signature and track completion status. |

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