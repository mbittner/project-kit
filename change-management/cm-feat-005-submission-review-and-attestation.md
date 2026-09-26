# CM-FEAT-005 | Change Management Brief: Submission Review and Attestation

*[Lire ce document en français](cm-feat-005-submission-review-and-attestation-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-005 Submission Review and Attestation](../features/feat-005-submission-review-and-attestation.md)  
> **Parent change brief:** [CM-EPIC-001 Digital Group Setup and Data Collection](cm-epic-001-digital-group-setup-and-data-collection.md)

## 1. Change Summary
Sponsors move from submitting information without a formal confirmation step to reviewing a consolidated summary, making edits if needed, and formally attesting before final submission.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Submits information without a consolidated review | Reviews a summary, edits if needed, and attests before submitting | Medium |
| New business administrator | Cannot be certain the submission was reviewed/confirmed by the sponsor | Relies on a recorded attestation as evidence of sponsor confirmation | Medium |
| Product Owner | Has no consistent record of submission confirmation | Uses submit-control and attestation data for auditability | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Submits information directly with no review step | Reaches a consolidated review before final submission |
| Provide information | No structured summary of what was entered | Sees a review summary of all entered information |
| Resolve issues | Must contact admin to change already-submitted data | Can edit directly from the review screen |
| Confirm and submit | Submission has no formal confirmation record | Confirms via a recorded attestation and submit control |
| Check status | Unclear whether submission is final | Status clearly reflects attested/submitted state |

## 4. What's Changing in Practice
- **New steps introduced:** Review summary, edit from review, attestation, submit control.
- **Steps removed/automated:** Post-submission correction requests due to lack of a review step.
- **New rules users must follow:** Attestation must be completed before the submit control is enabled.
- **New information users must provide/review:** A recorded attestation confirming accuracy of the reviewed information.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — explaining the review-then-attest-then-submit sequence.
- Walkthrough/short video: Optional.
- In-app guidance: Clear review summary and submit control state (see Section 10, UX/Interface Considerations).
- FAQ: Yes — what attestation legally/operationally represents.

## 6. Local Champions / SME Support
- Named champions: to confirm.
- Office hours during go-live: to confirm.
- Escalation path: new business administrator team, then compliance/legal for attestation questions.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Completion | % of reviews reaching a completed attestation | To confirm | To approve | Product Manager |
| First-pass success | % submitted without post-submission edits | To confirm | To approve | Product Owner / BA |
| Handling time | Time spent in the review/attestation step | To confirm | To approve | Operations |
| User experience | Sponsor confidence in the review process | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Sponsors treat attestation as a formality and skip careful review | Design the review summary to highlight key/high-risk fields |
| Legal/compliance requirements for attestation are undefined | Confirm attestation wording and requirements before go-live |
| Edit-from-review reopens validation issues unexpectedly | Ensure edits re-trigger validation consistently |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsor users
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
