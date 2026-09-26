# CM-FEAT-021 | Change Management Brief: Outcome and Benefits Reporting

*[Lire ce document en français](cm-feat-021-outcome-and-benefits-reporting-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-021 Outcome and Benefits Reporting](../features/feat-021-outcome-and-benefits-reporting.md)  
> **Parent change brief:** [CM-EPIC-006 Operational Analytics and KPI Dashboard](cm-epic-006-operational-analytics-and-kpi-dashboard.md)

## 1. Change Summary
Business leaders, product managers, and business analysts move from manually assembling KPI evidence for periodic business reviews to a standing KPI scorecard with baseline/target comparison, trend view, and measurement notes.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Business leader | Receives benefits updates only at scheduled reviews | Reviews a continuously available KPI scorecard | Medium |
| Product Manager | Manually assembles evidence to demonstrate value | Uses the scorecard as the standing source of benefits evidence | High |
| Business Analyst | Reconciles KPI data manually across sources | Maintains the scorecard and adds measurement notes for context | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Stakeholder requests a benefits update ahead of a review | Stakeholder opens the KPI scorecard at any time |
| Provide information | N/A (reporting step) | N/A |
| Resolve issues | Discrepancies in KPI figures discovered late, during review prep | Baseline/target comparison surfaces gaps continuously |
| Confirm and submit | Benefits report finalized manually before each review | Trend view and measurement notes are maintained on an ongoing basis |
| Check status | Benefits realization is only visible periodically | Outcome tracking is visible and current at all times |

## 4. What's Changing in Practice
- **New steps introduced:** KPI scorecard, baseline and target comparison, trend view, measurement notes.
- **Steps removed/automated:** Manual assembly of benefits evidence ahead of each business review.
- **New rules users must follow:** KPI baselines and targets must be formally approved and owned before being reflected in the scorecard.
- **New information users must provide/review:** Ongoing KPI actuals, trend context, and measurement notes explaining anomalies.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to read the scorecard and add measurement notes.
- Walkthrough/short video: Optional.
- In-app guidance: Baseline/target comparison visuals (see Section 10, UX/Interface Considerations).
- FAQ: Yes — how KPI definitions and targets are approved/updated.

## 6. Local Champions / SME Support
- Named champions: to confirm among business analysts.
- Office hours during go-live: to confirm.
- Escalation path: Product Manager for disputed KPI definitions or targets.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Scorecard active usage | % of target stakeholders regularly reviewing the scorecard | To confirm | To approve | Product Manager |
| KPI reporting cycle time | Time to produce a benefits report using the scorecard vs. manual compilation | To confirm | To approve | Business Analyst |
| Data trust score | Stakeholder-reported confidence in scorecard accuracy | To confirm | To approve | Product / UX |
| Baseline/target approval rate | % of KPIs with formally approved baselines and targets | To confirm | To approve | Product Manager |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| KPI baselines and targets remain unapproved | Escalate baseline and target approval as a go-live blocker |
| Stakeholders distrust the scorecard over familiar manual reports | Run the scorecard in parallel with manual reporting briefly and reconcile discrepancies |
| Measurement notes not maintained, reducing context over time | Assign clear ownership for keeping notes current |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with leaders and analysts
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
