# CM-FEAT-009 | Change Management Brief: Underwriting Referral and Decision Tracking

*[Lire ce document en français](cm-feat-009-underwriting-referral-and-decision-tracking-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-009 Underwriting Referral and Decision Tracking](../features/feat-009-underwriting-referral-and-decision-tracking.md)  
> **Parent change brief:** [CM-EPIC-002 Automated Underwriting Intake](cm-epic-002-automated-underwriting-intake.md)

## 1. Change Summary
Underwriters move from tracking referrals and decisions informally in spreadsheets or email to creating formal referrals, assigning them to a queue, and recording decision status and rationale in the system.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Underwriter | Tracks referrals and decisions informally | Creates referrals, works from a queue, and records rationale | High |
| New business administrator | Has limited visibility into referral status | Sees decision status directly on the case | Medium |
| Plan sponsor administrator | Learns of referral outcomes verbally or by email | Sees decision status reflected on their case | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Underwriter manually flags a case for referral | Underwriter creates a referral record directly in the system |
| Provide information | Referral context shared via email/spreadsheet notes | Referral context captured in a structured record |
| Resolve issues | Referral sits in an informal queue or inbox | Referral is assigned to a formal queue |
| Confirm and submit | Decision recorded informally, rationale often undocumented | Decision status and rationale are recorded together |
| Check status | Status inferred from emails or personal notes | Decision status is visible directly on the case |

## 4. What's Changing in Practice
- **New steps introduced:** Referral creation, queue assignment, decision status, decision rationale.
- **Steps removed/automated:** Informal, undocumented referral tracking via spreadsheets or email.
- **New rules users must follow:** Every referral must have a recorded decision status and rationale before closure.
- **New information users must provide/review:** Structured referral and decision data, including rationale, for audit and reporting.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to create referrals and record rationale consistently.
- Walkthrough/short video: Optional.
- In-app guidance: Decision status and rationale fields (see Section 10, UX/Interface Considerations).
- FAQ: Yes — expectations for rationale detail and consistency.

## 6. Local Champions / SME Support
- Named champions: to confirm within the underwriting team.
- Office hours during go-live: to confirm.
- Escalation path: underwriting lead for queue-assignment disputes.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Decision rationale capture rate | % of decisions with documented rationale | To confirm | To approve | Underwriting lead |
| Referral cycle time | Time from referral creation to recorded decision | To confirm | To approve | Operations |
| Exceptions | % of referrals requiring rework or reassignment | To confirm | To approve | Operations |
| User experience | Underwriter satisfaction with the queue | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Underwriters skip rationale capture to save time | Make rationale a required field before closing a referral |
| Queue assignment rules are unclear or contested | Facilitate rule workshops and document assignment logic |
| Users revert to informal tracking in parallel | Retire legacy tracking sheets and reinforce the single source of truth |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with underwriters
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
