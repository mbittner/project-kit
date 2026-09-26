# CM-FEAT-014 | Change Management Brief: Task, Milestone, and SLA Tracking

*[Lire ce document en français](cm-feat-014-task,-milestone,-and-sla-tracking-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-014 Task, Milestone, and SLA Tracking](../features/feat-014-task,-milestone,-and-sla-tracking.md)  
> **Parent change brief:** [CM-EPIC-004 Workflow and Case Management](cm-epic-004-workflow-and-case-management.md)

## 1. Change Summary
Operations managers and specialists move from tracking tasks, milestones, and SLA breaches in personal spreadsheets to a shared task list with milestone status, due-date alerts, and an SLA indicator.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| New business administrator | Tracks own tasks/deadlines informally | Works from a shared task list with due-date alerts | Medium |
| Operations manager | Finds SLA breaches reactively, often after escalation | Monitors milestone status and SLA indicators proactively | High |
| Assigned specialist | Relies on personal reminders for deadlines | Relies on system-generated due-date alerts | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Staff check personal trackers for what's due | Staff open the shared task list for the case |
| Provide information | N/A (tracking step) | N/A |
| Resolve issues | SLA breaches found only after a complaint/escalation | SLA indicator flags at-risk items before they breach |
| Confirm and submit | Milestone completion recorded informally or not at all | Milestone status is recorded and visible to all stakeholders |
| Check status | Manager compiles status manually across team members | Manager views task/milestone/SLA status directly |

## 4. What's Changing in Practice
- **New steps introduced:** Task list, milestone status, due-date alerts, SLA indicator.
- **Steps removed/automated:** Personal, manual tracking of deadlines and milestones.
- **New rules users must follow:** Task and milestone status must be kept current in the system rather than tracked personally.
- **New information users must provide/review:** Task due dates, milestone completion, and SLA status for every case.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to read and act on due-date alerts and SLA indicators.
- Walkthrough/short video: Optional.
- In-app guidance: SLA indicator and milestone status visuals (see Section 10, UX/Interface Considerations).
- FAQ: Yes — what triggers an SLA breach and how it is calculated.

## 6. Local Champions / SME Support
- Named champions: to confirm among operations managers.
- Office hours during go-live: to confirm.
- Escalation path: operations manager for SLA calculation disputes.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| SLA adherence | % of tasks/milestones completed within SLA | To confirm | To approve | Operations |
| Handling time | Time to complete tracked tasks | To confirm | To approve | Operations |
| Exceptions | % of tasks missing due dates | To confirm | To approve | Operations |
| Manager satisfaction | Post-launch survey score | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Staff keep using personal trackers in parallel | Retire legacy trackers and reinforce the system as the single source of truth |
| Managers distrust automated SLA calculations | Validate SLA logic against known cases before go-live |
| Alert fatigue from too many due-date notifications | Tune alert thresholds and frequency based on user feedback |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with managers and specialists
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
