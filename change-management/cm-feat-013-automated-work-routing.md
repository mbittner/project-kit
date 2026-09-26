# CM-FEAT-013 | Change Management Brief: Automated Work Routing

*[Lire ce document en français](cm-feat-013-automated-work-routing-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-013 Automated Work Routing](../features/feat-013-automated-work-routing.md)  
> **Parent change brief:** [CM-EPIC-004 Workflow and Case Management](cm-epic-004-workflow-and-case-management.md)

## 1. Change Summary
New business administrators, operations managers, and assigned specialists move from work being manually distributed or self-assigned informally to automated routing based on case attributes, role, and defined rules, with a visible assignment queue and reassignment/audit history.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| New business administrator | Receives work through informal handoffs | Receives work through an automated assignment queue | Medium |
| Operations manager | Manually distributes and reassigns work | Monitors routing rules and manages reassignments by exception | High |
| Assigned specialist | Works from personal lists or verbal handoffs | Works from a routed queue with a visible audit history | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Staff receive cases via email/verbal handoff | Staff receive cases through the automated assignment queue |
| Provide information | N/A (routing step) | N/A |
| Resolve issues | Manager manually reassigns when someone is overloaded | Reassignment is handled directly in the system with audit history |
| Confirm and submit | No consistent record of how work was assigned | Routing audit history documents every assignment decision |
| Check status | Manager relies on memory/spreadsheets for workload balance | Manager sees the assignment queue and routing rules directly |

## 4. What's Changing in Practice
- **New steps introduced:** Routing rules, assignment queue, reassignment, routing audit history.
- **Steps removed/automated:** Manual work distribution and informal handoffs.
- **New rules users must follow:** Work must be assigned according to defined routing rules unless a documented reassignment occurs.
- **New information users must provide/review:** Case attributes used to drive routing decisions and a full audit history of assignments.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how routing rules determine assignment and how to request reassignment.
- Walkthrough/short video: Optional.
- In-app guidance: Assignment queue and routing audit history (see Section 10, UX/Interface Considerations).
- FAQ: Yes — what to do if a case seems misrouted.

## 6. Local Champions / SME Support
- Named champions: to confirm among operations managers.
- Office hours during go-live: to confirm.
- Escalation path: operations manager, then Product Owner for routing rule disputes.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Routing automation rate | % of work assigned automatically vs. manually | To confirm | To approve | Product Manager |
| Handling time | Time from case creation to assignment | To confirm | To approve | Operations |
| Exceptions | % of cases requiring manual reassignment | To confirm | To approve | Operations |
| User experience | Staff satisfaction with routed workload | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Staff bypass routing and self-assign work informally | Disable manual self-assignment where feasible; reinforce via manager oversight |
| Routing rules create workload imbalance | Monitor queue distribution closely during the first cycles and tune rules |
| Rules are incomplete or contradictory at launch | Facilitate rule workshops and maintain a decision log |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with managers and specialists
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
