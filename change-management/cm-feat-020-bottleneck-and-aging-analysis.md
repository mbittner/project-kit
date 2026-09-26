# CM-FEAT-020 | Change Management Brief: Bottleneck and Aging Analysis

*[Lire ce document en français](cm-feat-020-bottleneck-and-aging-analysis-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-020 Bottleneck and Aging Analysis](../features/feat-020-bottleneck-and-aging-analysis.md)  
> **Parent change brief:** [CM-EPIC-006 Operational Analytics and KPI Dashboard](cm-epic-006-operational-analytics-and-kpi-dashboard.md)

## 1. Change Summary
Operations managers move from identifying bottlenecks reactively — through escalations or complaints — to using stage-aging, wait-state, and validation-failure trend analysis to intervene proactively, with an exportable view for deeper analysis.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Operations manager | Learns of bottlenecks after they cause escalations | Proactively identifies bottlenecks through aging/trend analysis | High |
| Business leader | Has limited insight into where delays originate | Reviews bottleneck trends to inform resourcing decisions | Medium |
| Business Analyst | Manually investigates delay patterns case by case | Uses validation-failure trends and exportable views for analysis | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Manager investigates only after a complaint/escalation | Manager reviews stage-aging and wait-state analysis proactively |
| Provide information | N/A (analysis step) | N/A |
| Resolve issues | Root cause investigated manually, case by case | Validation-failure trends highlight systemic issues directly |
| Confirm and submit | No structured way to share findings | Exportable view supports sharing findings with stakeholders |
| Check status | Bottlenecks discovered too late to prevent impact | Early warning enables intervention before cases stall |

## 4. What's Changing in Practice
- **New steps introduced:** Stage aging, wait-state analysis, validation-failure trends, exportable view.
- **Steps removed/automated:** Reactive, case-by-case root-cause investigation after an escalation occurs.
- **New rules users must follow:** Analysis should be reviewed on a regular cadence rather than only after an incident.
- **New information users must provide/review:** Aging and trend data used to prioritize process improvements.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to interpret aging and trend views.
- Walkthrough/short video: Optional.
- In-app guidance: Trend visualizations and export controls (see Section 10, UX/Interface Considerations).
- FAQ: Yes — how "aging" and "wait-state" are calculated.

## 6. Local Champions / SME Support
- Named champions: to confirm among operations managers.
- Office hours during go-live: to confirm.
- Escalation path: business analyst lead for data/calculation questions.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Bottleneck detection lead time | Time from bottleneck onset to identification | To confirm | To approve | Operations |
| Proactive intervention rate | % of bottlenecks addressed before escalation | To confirm | To approve | Operations |
| Usage | % of operations managers regularly reviewing the analysis | To confirm | To approve | Product Manager |
| User experience | Manager satisfaction with the analysis views | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Managers continue to wait for escalations out of habit | Build a regular review cadence into operational routines |
| Aging/trend calculations misunderstood or distrusted | Validate calculation logic with operations SMEs before go-live |
| Analysis reveals uncomfortable performance gaps | Frame usage guidance around process improvement, not blame |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with operations managers
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
