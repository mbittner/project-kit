# EPIC-XXX | <Epic Name>

*[Lire ce document en français](epic-template-fr.md)*

> **Document status:** Draft
> **Document version:** Not baselined  
> **Last validated:** Not recorded  
> **Parent initiative:** [INIT-XXX <Initiative Name>](../initiative/init-XXX-slug.md)
> **Change management brief:** [CM-EPIC-XXX <Epic Name>](../change-management/cm-epic-XXX-slug.md)
> **Important:** This is a template. Populate every bracketed placeholder and remove guidance text before publishing.
> **Status gate:** Valid values are Draft, In Review, Approved. Only set Approved after running `/validate epic <id>` and confirming the score is 90+ with all mandatory minimums met, the checklist is fully checked, and no `[NEEDS CLARIFICATION]` markers remain — then replace `Not recorded` with `> **Last validated:** <date> — Score <NN>/100 (Ready for Feature Discovery)`.

## 1. Epic Summary
*(Mandatory)* One sentence: what business capability will exist after delivery. Name a capability, not a technology (e.g., "Digital Customer Intake", not "Salesforce Case Management").

**Expected value:** *(one line — what improves once this capability exists)*

## 2. Business Problem / Opportunity
*(Mandatory)* Current situation, pain points, and business impact.

> *(Example shape: "Advisors currently submit onboarding forms through email and PDF documents, resulting in delays and rework.")*

## 3. Users
*(Mandatory)* Identify who benefits from this capability.

| User Type | User |
|---|---|
| Primary | *(to confirm)* |
| Secondary | *(to confirm)* |
| Operational | *(to confirm)* |

## 4. Business Outcome
*(Mandatory)* What measurable business improvement should occur? Outcomes, not outputs.
- *(outcome)*

## 5. Epic Hypothesis
*(Mandatory)* "We believe that `<capability statement>`. This should contribute to `<business outcome(s)>`. The hypothesis must be tested through approved feature KPIs and initiative outcomes."

## 6. Success Metrics
*(Mandatory)* KPI table with current state and target state.

| KPI | Current | Target |
|---|---|---|
| *(KPI)* | *(baseline to confirm)* | *(target to approve)* |

## 7. Scope
*(Mandatory)*

### In Scope
- *(item)*

### Out of Scope
- Capabilities assigned to another epic in the parent initiative.
- Final technical design and vendor selection.
- Unapproved policy, legal, privacy, security, or operational changes.

## 8. Features
*(Mandatory)* Link child Feature Canvases once they exist. Before decomposition, list candidate features.

| Feature | Purpose |
|---|---|
| *(link once created, or candidate feature name)* | *(purpose)* |

## 9. Dependencies
*(Mandatory)*
- *(dependency, e.g., authentication services, shared platforms, security/architecture reviews, other epics)*

## 10. Risks and Assumptions
*(Mandatory)*

| Risk | Impact | Response |
|---|---|---|
| *(risk)* | *(High/Medium/Low)* | *(response)* |

**Assumptions:**
- *(assumption)*

## 11. Ownership
*(Mandatory)* No epic is approved without clear accountability.

| Role | Required | Name |
|---|---|---|
| Product Manager | Yes | *(to confirm)* |
| Product Owner | Yes | *(to confirm)* |
| Business Owner | Yes | *(to confirm)* |

## Open Questions Log *(Conditional — include only if unresolved items exist beyond the 5 capped `[NEEDS CLARIFICATION]` markers; delete this section if there's nothing to log)*

| Question | Why It Matters | Decision Needed By | Suggested Owner | Status |
|---|---|---|---|---|
| *(question)* | *(why it matters)* | *(date)* | *(owner)* | Open |

## 12. Readiness Criteria
- [ ] Epic objective and boundaries approved
- [ ] Users identified (primary, secondary, operational)
- [ ] Business outcome and success metrics agreed
- [ ] Features identified and linked (or candidate features listed)
- [ ] Cross-epic dependencies assigned
- [ ] Major business, architectural, control, and change risks reviewed
- [ ] Ownership assigned
