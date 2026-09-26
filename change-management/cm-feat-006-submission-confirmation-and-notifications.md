# CM-FEAT-006 | Change Management Brief: Submission Confirmation and Notifications

*[Lire ce document en français](cm-feat-006-submission-confirmation-and-notifications-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-006 Submission Confirmation and Notifications](../features/feat-006-submission-confirmation-and-notifications.md)  
> **Parent change brief:** [CM-EPIC-001 Digital Group Setup and Data Collection](cm-epic-001-digital-group-setup-and-data-collection.md)

## 1. Change Summary
Sponsors and internal teams move from a manual, delayed confirmation email to an automatic confirmation reference, receipt notification, internal notification, and clear next-step messaging at the moment of submission.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Waits for a manually sent confirmation email | Receives an immediate confirmation reference and next-step message | Medium |
| New business administrator | Manually sends confirmations and notifies relevant parties | Relies on automatic receipt and internal notifications | Medium |
| Product Owner | Has no visibility into confirmation timeliness | Uses receipt/notification KPIs to monitor timeliness | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Submission completed with no immediate acknowledgement | Submission triggers an automatic confirmation reference |
| Provide information | N/A (post-submission step) | N/A |
| Resolve issues | Sponsor calls to confirm the submission was received | Receipt notification is sent automatically |
| Confirm and submit | Internal team notified manually, sometimes late | Internal notification triggers automatically |
| Check status | Sponsor unsure of next steps | Next-step message clarifies what happens next |

## 4. What's Changing in Practice
- **New steps introduced:** Confirmation reference, receipt notification, internal notification, next-step message.
- **Steps removed/automated:** Manual confirmation emails and manual internal handoff notifications.
- **New rules users must follow:** Confirmation and notifications must be traceable to the originating submission.
- **New information users must provide/review:** A confirmation reference number for future inquiries.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — what the confirmation reference means and where to find it.
- Walkthrough/short video: Not required.
- In-app guidance: Next-step messaging built into the confirmation screen (see Section 10, UX/Interface Considerations).
- FAQ: Yes — what to do if a confirmation is not received.

## 6. Local Champions / SME Support
- Named champions: to confirm.
- Office hours during go-live: to confirm.
- Escalation path: new business administrator team for missing/delayed notifications.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Completion | % of submissions receiving automatic confirmation | To confirm | To approve | Product Manager |
| Handling time | Time from submission to confirmation delivery | To confirm | To approve | Operations |
| Exceptions | % of confirmations requiring manual follow-up | To confirm | To approve | Operations |
| User experience | Sponsor satisfaction with confirmation clarity | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Notification delivery failures (email/spam filtering) | Provide an in-app confirmation view as a fallback to email |
| Sponsors still call in to confirm receipt out of habit | Reinforce confirmation reference visibility and next-step clarity |
| Internal notification routing rules incomplete at launch | Confirm routing rules and owners before go-live |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsor and internal users
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
