# ARCH-XXX | Architecture Assessment: <Decision Question Title>

*[Lire ce document en français](arch-assessment-template-fr.md)*

> **Assessment status:** Draft  
> **Last validated:** Not recorded  
> **Solution Architect:** <name, to confirm>  
> **Decision owner:** <name or role, to confirm>  
> **Linked business artifacts:** [FEAT-XXX <Feature Name>](../../features/feat-XXX-slug.md)  
> **Related systems:** <SYS-### — Canonical system name>, or None identified  
> **Resulting decision:** Not yet recorded  
> **Important:** This is a template. Populate every bracketed placeholder and remove guidance text before publishing.  
> **Status gate:** Valid values are Draft, In Review, Recommended, Closed. Set Recommended only after `/validate assessment <id>` confirms the checklist is complete, no `[NEEDS CLARIFICATION]` markers remain, and no Open Questions Log item is still Open. Set Closed once the decision is recorded in an ADR and linked above. The score is advisory and never blocks the status.

## 1. Decision Question and Why Now
*(Mandatory)* One question this assessment answers, e.g. "How should <capability> exchange <data> with <SYS-### — system>?" Explain why the decision is needed now and what happens if it is deferred.

## 2. Business Context and Outcomes
*(Mandatory)* Summarize the linked Initiative/Epic/Feature outcomes, users, scope, and success measures this decision must support. Link, do not copy, the business artifacts.

## 3. Constraints, Standards, and Assumptions
*(Mandatory)*

| Type | Statement | Source | Status |
|---|---|---|---|
| Constraint / Standard / Assumption | *(statement)* | *(policy, standard, business artifact, or person)* | Confirmed / To confirm |

## 4. Evidence Gaps
*(Mandatory — "None identified" is acceptable, silence is not)* Facts needed to decide that are not yet known (volumes, costs, SLAs, vendor terms, data quality). Never invent values.

## 5. Options Considered
*(Mandatory — at least two genuine options. Include doing nothing and non-technology options such as process, policy, or reuse where relevant.)*

| Option | Description | Option type |
|---|---|---|
| A | *(description)* | Technology / Process / Policy / Reuse / Buy / Build / Do nothing |
| B | *(description)* | *(type)* |

## 6. Evaluation Criteria
*(Mandatory)* Each criterion traces to a business outcome, constraint, or quality attribute.

| Criterion | Why it matters | Traces to | Weight (optional) |
|---|---|---|---|
| *(criterion)* | *(reason)* | *(outcome, constraint, or NFR)* | *(High / Medium / Low)* |

## 7. Tradeoff Analysis
*(Mandatory)* Rate or describe each option against the standard dimensions and any criteria above. Use "To confirm" where evidence is missing.

| Dimension | Option A | Option B |
|---|---|---|
| Business fit | | |
| Integration and data impact | | |
| Security and privacy | | |
| Quality attributes (availability, performance, scalability, accessibility) | | |
| Operations and support | | |
| Cost and complexity | | |
| Delivery risk | | |
| Reversibility | | |

## 8. Risks and Dependencies
*(Mandatory)*

| Risk or dependency | Affects option(s) | Impact | Response or owner |
|---|---|---|---|
| *(item)* | *(A/B)* | High / Medium / Low | *(response or owner)* |

## 9. Recommendation and Rationale
*(Mandatory)* The recommended option, why it best meets the criteria, the tradeoffs accepted, and the conditions under which the recommendation would change. A recommendation is not a decision; record the decision in an ADR.

## 10. Open Questions Log
*(Conditional — keep the table only when questions remain.)*

| Question | Why It Matters | Decision Needed By | Suggested Owner | Status |
|---|---|---|---|---|
| *(question)* | *(impact)* | *(date, to confirm)* | *(role)* | Open / Resolved |

## 11. Readiness Checklist
- [ ] Decision question is singular and tied to at least one linked business artifact
- [ ] Business outcomes and constraints that shape the decision are stated
- [ ] At least two genuine options, including doing nothing or a non-technology option where relevant
- [ ] Evaluation criteria trace to outcomes, constraints, or quality attributes
- [ ] Tradeoffs cover business fit, integration/data, security/privacy, quality attributes, operations, cost/complexity, delivery risk, and reversibility
- [ ] No invented costs, volumes, SLAs, owners, or dates — unknowns are "To confirm"
- [ ] Risks and dependencies have a response or owner
- [ ] Recommendation and rationale are stated, and clearly separated from the decision
- [ ] Related systems are cited as `SYS-### — Name` and reconciled with the System Register
- [ ] Decision owner identified
