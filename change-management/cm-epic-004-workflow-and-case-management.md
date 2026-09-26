# CM-EPIC-004 | Change Management Brief: Workflow and Case Management

*[Lire ce document en français](cm-epic-004-workflow-and-case-management-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source epic:** [EPIC-004 Workflow and Case Management](../epics/epic-004-workflow-and-case-management.md)  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Child feature briefs:** [CM-FEAT-013](cm-feat-013-automated-work-routing.md) · [CM-FEAT-014](cm-feat-014-task,-milestone,-and-sla-tracking.md) · [CM-FEAT-015](cm-feat-015-exception-and-escalation-management.md)

## 1. Change Summary
New business administrators, operations managers, and assigned specialists move from informally distributed work and personal tracking to automated, rule-based work routing with visible tasks, milestones, SLAs, and a formal exception/escalation process.

## 2. Business Driver
- **Problem being solved:** Manual handoffs, fragmented ownership, delayed validation, and limited status visibility across the current onboarding journey.
- **Expected value:** Clearer accountability, fewer stalled cases, and more predictable handoffs.
- **What happens if we do nothing:** Cases continue to stall between teams without clear ownership, and exceptions are handled inconsistently with no shared visibility.

## 3. Impacted Stakeholder Groups
| Stakeholder group | Role today | Role after change | Impact level |
|---|---|---|---|
| New business administrator | Manually receives and tracks assigned work | Receives work through automated routing rules with a visible queue | Medium |
| Operations manager | Manually reassigns and chases stalled cases | Monitors SLA/milestone dashboards and manages escalations formally | High |
| Assigned specialist | Works from informal handoffs and personal lists | Works from a routed queue with task, milestone, and SLA visibility | Medium |

## 4. Nature of the Change
- **Process change:** Work assignment moves from informal handoff to rule-based automated routing; exceptions get a formal creation/escalation/resolution lifecycle.
- **Tool/system change:** Introduction of routing rules, assignment queues, task/milestone/SLA tracking, and exception records.
- **Role/responsibility change:** Operations managers shift from manually chasing status to managing by exception via dashboards.
- **Policy/rule change:** Routing rules and SLA definitions become explicit and system-enforced.

## 5. Change Impact Assessment
| Dimension | Current state | Future state | Gap / disruption |
|---|---|---|---|
| Process | Informal work distribution and follow-up | Automated routing with visible SLA and milestone status | Staff must trust and follow system-assigned work over informal habits |
| Tools/systems | Personal trackers, email/chat handoffs | Routing engine, task/milestone dashboard, exception register | New shared tools replace individual tracking methods |
| Roles/skills | Ad hoc prioritization | SLA-driven prioritization and escalation discipline | Managers need to adapt to dashboard-based oversight |
| Volume/workload | Time spent locating case status | Reduced search time, more time on active work | Initial routing-rule tuning period expected |

## 6. Communication Plan
| Audience | Key message | Channel | Timing | Owner |
|---|---|---|---|---|
| Operations leadership | This epic improves accountability and reduces stalled cases | Steering committee update | Pre-build and pre-launch | Product Manager |
| New business administrators / specialists | Work will now be assigned and tracked automatically | Team briefing, updated procedures | 2 weeks before go-live | Operations manager |
| Operations managers | New SLA and exception dashboards replace manual chasing | Manager briefing and dashboard walkthrough | 2 weeks before go-live | Operations manager |

## 7. Training and Enablement Needs
- Roles requiring formal training: operations managers (dashboards, escalation management), specialists/administrators (working from routed queues).
- Format: instructor-led session and job aid for managers; short walkthrough for specialists.
- Owner and target completion date: to confirm.
- Source material: UX / Interface Considerations sections of the three child feature canvases.

## 8. Resistance Risks and Mitigations
| Risk | Likely source | Mitigation |
|---|---|---|
| Staff bypass routing and self-assign work informally | Specialists/administrators | Disable manual self-assignment where feasible; reinforce via manager oversight |
| Managers distrust automated SLA calculations | Operations managers | Validate SLA logic against known cases before go-live |
| Escalation process seen as blame-oriented | All roles | Frame escalation as a support mechanism, not performance criticism |

## 9. Readiness and Go-Live Criteria
- [ ] All three child features approved and in scope
- [ ] Administrators, managers, and specialists identified and briefed
- [ ] Pre-launch communications executed
- [ ] Training completed for all impacted roles
- [ ] Hypercare support model in place for first routing cycle
- [ ] Fallback to manual assignment defined in case of major defects
- [ ] Epic Readiness Criteria (source epic, Section 10) satisfied

## 10. Adoption and Benefits Measurement
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Routing automation rate | % of work assigned automatically vs. manually | To confirm | To approve | Product Manager |
| SLA adherence | % of tasks/milestones completed within SLA | To confirm | To approve | Operations |
| Stalled-case rate | % of cases with no activity beyond a defined threshold | To confirm | To approve | Operations |
| Manager satisfaction | Post-launch survey score | To confirm | To approve | Product / UX |

*(Rolls up to initiative-level Onboarding cycle time and Manual handling rate measures.)*

## 11. Approval Checklist
- [ ] Change sponsor named
- [ ] Stakeholder impact assessment reviewed
- [ ] Communication and training plans approved
- [ ] Adoption measures and owners agreed
- [ ] Go-live and hypercare support confirmed
