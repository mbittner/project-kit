# CM-FEAT-003 | Change Management Brief: Real-Time Data Validation

*[Lire ce document en français](cm-feat-003-real-time-data-validation-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-003 Real-Time Data Validation](../features/feat-003-real-time-data-validation.md)  
> **Parent change brief:** [CM-EPIC-001 Digital Group Setup and Data Collection](cm-epic-001-digital-group-setup-and-data-collection.md)

## 1. Change Summary
Errors that used to be discovered downstream by new business administrators — after a sponsor's submission — are now surfaced immediately to the sponsor at the point of entry, through required-field, format, and cross-field validation with a clear error summary.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Submits information, learns of errors later via follow-up | Sees and resolves validation issues before submitting | High |
| New business administrator | Manually identifies and communicates errors back to sponsors | Receives submissions that are already validated | High |
| Product Owner | Has no visibility into common error patterns | Uses exception-rate KPIs to prioritize rule improvements | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Sponsor submits information without upfront checks | Sponsor works within a session that validates as they go |
| Provide information | Enters data with no immediate feedback | Enters data with required-field and format validation applied live |
| Resolve issues | Learns of errors via follow-up call/email days later | Sees an error summary immediately and corrects in place |
| Confirm and submit | Submission accepted, then found incomplete downstream | Submission only proceeds once validation passes |
| Check status | Waits for admin to report issues | Sees validation status directly in the interface |

## 4. What's Changing in Practice
- **New steps introduced:** Required-field validation, format validation, cross-field rule validation, error summary.
- **Steps removed/automated:** Manual downstream error discovery and follow-up communication by administrators.
- **New rules users must follow:** Invalid or inconsistent information must be corrected before the submission can proceed.
- **New information users must provide/review:** Real-time validation results and an error summary alongside their inputs.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — common validation messages and how to resolve them.
- Walkthrough/short video: Optional — brief demo of live validation behavior.
- In-app guidance: Actionable validation messages placed near the issue (see Section 10, UX/Interface Considerations).
- FAQ: Yes — for edge cases where validation rules seem unclear.

## 6. Local Champions / SME Support
- Named champions by team/region: to confirm.
- Office hours during go-live: to confirm.
- Escalation path: new business administrator team, then Product Owner, for rule disputes.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| First-pass success | % completed without correction or follow-up | To confirm | To approve | Product Owner / BA |
| Exceptions | % requiring manual intervention after validation | To confirm | To approve | Operations |
| Handling time | Elapsed time to resolve validation issues | To confirm | To approve | Operations |
| User experience | Sponsor-reported clarity of validation messages | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Rules are incomplete or contradictory at launch | Facilitate rule workshops and maintain a decision log before go-live |
| Sponsors find validation messages unclear and seek workarounds | Validate journey with users and refine message wording |
| Overly strict rules block valid but unusual submissions | Provide an escalation path for legitimate exceptions |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsor users
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
