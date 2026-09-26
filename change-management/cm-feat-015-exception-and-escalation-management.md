# CM-FEAT-015 | Change Management Brief: Exception and Escalation Management

*[Lire ce document en français](cm-feat-015-exception-and-escalation-management-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-015 Exception and Escalation Management](../features/feat-015-exception-and-escalation-management.md)  
> **Parent change brief:** [CM-EPIC-004 Workflow and Case Management](cm-epic-004-workflow-and-case-management.md)

## 1. Change Summary
Operations managers and specialists move from raising exceptions via email or phone with no formal ownership tracking to creating structured exception records with severity, owner, escalation path, and resolution status.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| New business administrator | Raises exceptions informally by email/phone | Creates a structured exception record in the system | Medium |
| Operations manager | Manages escalations reactively and inconsistently | Manages escalations through a formal, visible path | High |
| Assigned specialist | Learns of exceptions second-hand | Sees exception records with clear severity and ownership | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Staff notice an issue and email/call someone | Staff create an exception record directly in the case |
| Provide information | Describes the issue informally, inconsistently | Captures severity and owner in a structured record |
| Resolve issues | Escalation path unclear, depends on who is asked | Escalation path is defined and followed consistently |
| Confirm and submit | Resolution communicated informally, often undocumented | Resolution status is recorded and visible to all stakeholders |
| Check status | Manager cannot see the full picture of open exceptions | Manager sees all exceptions, severities, and owners together |

## 4. What's Changing in Practice
- **New steps introduced:** Exception record, severity and owner, escalation path, resolution status.
- **Steps removed/automated:** Informal, undocumented exception reporting via email/phone.
- **New rules users must follow:** Every exception must have a recorded severity, owner, and resolution status before closure.
- **New information users must provide/review:** Structured exception data supporting escalation and resolution tracking.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — severity definitions and escalation triggers.
- Walkthrough/short video: Optional.
- In-app guidance: Escalation path and resolution status fields (see Section 10, UX/Interface Considerations).
- FAQ: Yes — how to select the right severity level.

## 6. Local Champions / SME Support
- Named champions: to confirm among operations managers.
- Office hours during go-live: to confirm.
- Escalation path for feature issues: operations manager, then Product Owner.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Exception resolution time | Time from creation to resolution status closed | To confirm | To approve | Operations |
| Escalation adherence | % of exceptions following the defined escalation path | To confirm | To approve | Operations |
| Exceptions | % of cases requiring escalation | To confirm | To approve | Operations |
| Manager satisfaction | Post-launch survey score | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Staff perceive formal exception logging as blame-oriented | Frame the process as a support mechanism, not performance criticism |
| Severity classification applied inconsistently | Provide clear definitions and examples in training |
| Staff revert to informal email/phone escalation | Reinforce the system as the only recognized escalation channel |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with managers and specialists
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
