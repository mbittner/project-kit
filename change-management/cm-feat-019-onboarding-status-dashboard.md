# CM-FEAT-019 | Change Management Brief: Onboarding Status Dashboard

*[Lire ce document en français](cm-feat-019-onboarding-status-dashboard-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-019 Onboarding Status Dashboard](../features/feat-019-onboarding-status-dashboard.md)  
> **Parent change brief:** [CM-EPIC-006 Operational Analytics and KPI Dashboard](cm-epic-006-operational-analytics-and-kpi-dashboard.md)

## 1. Change Summary
Business leaders, product managers, operations managers, and business analysts move from manually compiled, periodic status reports to a live portfolio and case-level dashboard with milestone views and owner/aging filters.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Business leader | Receives ad hoc, manually compiled status updates | Reviews a live portfolio-level dashboard | Medium |
| Product Manager | Requests status updates from multiple teams | Uses the dashboard as a shared source of truth | Medium |
| Operations manager | Compiles case-level status manually for reporting | Uses case drill-down and owner/aging filters directly | High |
| Business Analyst | Manually reconciles data across sources for reporting | Relies on the dashboard as a consistent reporting source | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Requests a manual status update from a team member | Opens the dashboard for live portfolio/case status |
| Provide information | N/A (reporting step) | N/A |
| Resolve issues | Status ambiguity resolved via follow-up conversations | Case drill-down clarifies status directly |
| Confirm and submit | Report compiled and circulated periodically | Dashboard is continuously available and current |
| Check status | Relies on the most recent manually compiled report | Uses milestone view and aging filters for a real-time picture |

## 4. What's Changing in Practice
- **New steps introduced:** Portfolio summary, case drill-down, milestone view, owner and aging filters.
- **Steps removed/automated:** Manual compilation and circulation of periodic status reports.
- **New rules users must follow:** Dashboard data must be trusted as the current source rather than manually curated reports.
- **New information users must provide/review:** Live portfolio and case-level status, ownership, milestones, and aging.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — dashboard navigation and filter usage.
- Walkthrough/short video: Yes — for business leaders and managers new to the dashboard.
- In-app guidance: Filter and drill-down interactions (see Section 10, UX/Interface Considerations).
- FAQ: Yes — how data freshness and refresh timing work.

## 6. Local Champions / SME Support
- Named champions: to confirm among operations managers and business analysts.
- Office hours during go-live: to confirm.
- Escalation path: business analyst lead for data discrepancies.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Dashboard active usage | % of target users regularly accessing the dashboard | To confirm | To approve | Product Manager |
| Reporting cycle time | Time to produce a status update using the dashboard vs. manual compilation | To confirm | To approve | Business Analyst |
| Data trust score | Stakeholder-reported confidence in dashboard accuracy | To confirm | To approve | Product / UX |
| Exceptions | % of cases with missing/incorrect status data | To confirm | To approve | Operations |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Stakeholders distrust dashboard data over familiar manual reports | Run the dashboard in parallel with manual reporting briefly and reconcile discrepancies |
| Underlying data quality issues undermine dashboard accuracy | Validate source data feeds before go-live |
| Dashboard used for blame rather than improvement | Frame usage guidance around proactive support, not performance policing |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with leaders, managers, and analysts
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
