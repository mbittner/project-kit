# FEAT-XXX | Feature Canvas: <Feature Name>

*[Lire ce document en français](feature-template-fr.md)*

> **Document status:** Draft
> **Document version:** Not baselined  
> **Last validated:** Not recorded  
> **Parent epic:** [EPIC-XXX <Epic Name>](../epics/epic-XXX-slug.md)
> **Change management brief:** [CM-FEAT-XXX <Feature Name>](../change-management/cm-feat-XXX-slug.md)
> **Architecture references:** None
> **Important:** This is a template. Populate every bracketed placeholder and remove guidance text before publishing.
> **Status gate:** Valid values are Draft, In Review, Approved. Only set Approved after running `/validate feature <id>` and confirming the score is 90+ with all mandatory minimums met, the checklist is fully checked, and no `[NEEDS CLARIFICATION]` markers remain — then replace `Not recorded` with `> **Last validated:** <date> — Score <NN>/100 (Story-ready)`.

## 1. Feature Name and Ownership
**Feature Owner:** *(Product Owner or equivalent, to confirm)*
**Primary Beneficiary:** *(who receives the direct benefit)*
**Secondary Beneficiaries:** *(if any)*

## 2. Business Objective
*(Mandatory)* Short, value-oriented statement of what this feature delivers.

## 3. User or Stakeholder Problem
*(Mandatory)* Describe the specific need, difficulty, risk, or opportunity — not the solution.

## 4. Feature Statement
*(Mandatory)*
```text
Enable [beneficiary]
to [perform an action or receive a service]
so that [expected benefit].
```

## 5. Benefit Hypothesis
*(Mandatory)*
```text
We believe that [proposed functionality]
for [beneficiary]
will result in [expected benefit].

We will know this is successful when [measure and target].
```

## 6. Feature Description
*(Mandatory)* Expand on the behavior in plain business language — cohesive product function, not a technical component.

## 7. Personas
- Primary: *(persona)*
- Secondary: *(persona)*
- Operational: *(persona)*

## 8. Scope
*(Mandatory)*

### In Scope
- *(item)*

### Out of Scope
- Capabilities assigned to another feature or epic.
- Final technical implementation choices.
- Business-policy changes not explicitly approved.

## 9. Feature-Level Acceptance Criteria
*(Mandatory)* Observable, testable conditions of satisfaction — feature-level, not a full story-level inventory.

> Given `<precondition>`, when `<trigger>`, then:
> - *(observable condition)*
> - *(observable condition)*

## 10. Candidate User Journey
`<Step 1> → <Step 2> → <Step 3> → <Step 4>`

## 11. Business Rules to Validate
- *(rule)*

## 12. Data / Information
- *(data element)*

## 13. UX / Interface Considerations
- *(consideration)*

## 14. Dependencies
*(Mandatory)*
- *(dependency, e.g., authentication capability, upstream data model, ownership rules, retention policy)*

## 15. Non-Functional / Quality and Compliance Considerations
*(Mandatory)* Security, privacy, accessibility, performance, availability, auditability, retention, regulatory compliance. State "Not applicable" explicitly where genuinely irrelevant — do not omit.
- *(consideration)*

## 16. Success Measures
*(Mandatory)*

| Measure | Baseline | Target | Measurement Period |
|---|---:|---:|---|
| *(measure)* | *(to confirm)* | *(to approve)* | *(period)* |

## 17. Assumptions
*(Mandatory)*
- *(assumption)*

## 18. Risks and Mitigations
*(Mandatory)*

| Risk | Proposed Mitigation |
|---|---|
| *(risk)* | *(mitigation)* |

## 19. Candidate User Stories
List likely stories without fully specifying them during initial feature definition.
- *(candidate story)*

## Open Questions Log *(Conditional — include only if unresolved items exist beyond the 5 capped `[NEEDS CLARIFICATION]` markers; delete this section if there's nothing to log)*

| Question | Why It Matters | Decision Needed By | Suggested Owner | Status |
|---|---|---|---|---|
| *(question)* | *(why it matters)* | *(date)* | *(owner)* | Open |

## 20. Feature Readiness Checklist
- [ ] Business objective, feature statement, and benefit hypothesis validated
- [ ] Primary beneficiary and personas validated with users
- [ ] Scope, exclusions, and business rules agreed
- [ ] Feature-level acceptance criteria defined and testable
- [ ] Data, integrations, dependencies, and non-functional considerations reviewed
- [ ] UX direction and content needs identified
- [ ] Success measures (baseline, target, period, owner) agreed
- [ ] Candidate stories mapped and sequenced
- [ ] Major decisions, risks, and assumptions assigned
- [ ] Feature Owner assigned and delivery team feasibility review complete
