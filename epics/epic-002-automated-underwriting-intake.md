# EPIC-002 | Automated Underwriting Intake

*[Lire ce document en français](epic-002-automated-underwriting-intake-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Change management brief:** [CM-EPIC-002 Automated Underwriting Intake](../change-management/cm-epic-002-automated-underwriting-intake.md)

## 1. Epic Summary
Collect and route underwriting information in a structured form that supports timely assessment.

**Expected value:** More complete underwriting intake, reduced follow-up, and clearer decision readiness.

## 2. Problem / Opportunity
The current onboarding journey includes manual exchanges, fragmented information, delayed validation, and limited status visibility. This epic addresses the portion of that problem described in the objective above.

## 3. Epic Hypothesis
We believe that collect and route underwriting information in a structured form that supports timely assessment. This should contribute to more complete underwriting intake, reduced follow-up, and clearer decision readiness. The hypothesis must be tested through approved feature KPIs and initiative outcomes.

## 4. Scope
### In scope
- **Underwriting Requirements Questionnaire:** Collect risk and plan information using conditional questions.
- **Eligibility and Completeness Validation:** Verify that required underwriting inputs are present and internally consistent.
- **Underwriting Referral and Decision Tracking:** Route exceptions for review and record decision status and rationale.

### Out of scope
- Capabilities assigned to another epic in INIT-001.
- Final technical design and vendor selection.
- Unapproved policy, legal, privacy, security, or operational changes.

## 5. Features
| Feature | Purpose |
|---|---|
| [FEAT-007 Underwriting Requirements Questionnaire](../features/feat-007-underwriting-requirements-questionnaire.md) | Collect risk and plan information using conditional questions. |
| [FEAT-008 Eligibility and Completeness Validation](../features/feat-008-eligibility-and-completeness-validation.md) | Verify that required underwriting inputs are present and internally consistent. |
| [FEAT-009 Underwriting Referral and Decision Tracking](../features/feat-009-underwriting-referral-and-decision-tracking.md) | Route exceptions for review and record decision status and rationale. |

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