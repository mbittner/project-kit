# CM-FEAT-011 | Change Management Brief: Document Review and Version Status

*[Lire ce document en français](cm-feat-011-document-review-and-version-status-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-011 Document Review and Version Status](../features/feat-011-document-review-and-version-status.md)  
> **Parent change brief:** [CM-EPIC-003 Document Collection and E-Signature](cm-epic-003-document-collection-and-e-signature.md)

## 1. Change Summary
Document reviewers move from manually tracking document versions and acceptance in email threads or spreadsheets to a system with version history, a formal review disposition, correction requests, and an accepted-version marker.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Document reviewer | Manually tracks versions and acceptance status | Classifies documents using version history and disposition | High |
| Plan sponsor administrator | Learns of rejected/incorrect documents via email | Sees correction requests and accepted-version status directly | Medium |
| Broker representative | Relays correction requests between reviewer and sponsor | Sees correction requests directly in the system | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Reviewer opens an email thread to find the latest version | Reviewer opens the case and sees full version history |
| Provide information | N/A (review step) | N/A |
| Resolve issues | Reviewer emails a correction request informally | Reviewer issues a structured correction request |
| Confirm and submit | Acceptance communicated informally | Reviewer marks the accepted version formally |
| Check status | Sponsor/broker unsure which version is current | Accepted-version marker clarifies the current state |

## 4. What's Changing in Practice
- **New steps introduced:** Version history, review disposition, correction request, accepted-version marker.
- **Steps removed/automated:** Manual version tracking and informal correction requests via email.
- **New rules users must follow:** Documents must be classified as received, accepted, or requiring correction before progressing.
- **New information users must provide/review:** Full version history and current disposition for each document.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — disposition categories and what each means for the sponsor/broker.
- Walkthrough/short video: Optional.
- In-app guidance: Version history and disposition labeling (see Section 10, UX/Interface Considerations).
- FAQ: Yes — how to resubmit after a correction request.

## 6. Local Champions / SME Support
- Named champions: to confirm among document reviewers.
- Office hours during go-live: to confirm.
- Escalation path: document reviewer lead for disputed dispositions.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| First-pass success | % of documents accepted without correction | To confirm | To approve | Product Owner / BA |
| Handling time | Time from receipt to accepted-version marker | To confirm | To approve | Operations |
| Exceptions | % of documents requiring more than one correction cycle | To confirm | To approve | Operations |
| Reviewer satisfaction | Post-launch survey score | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Reviewers uncertain about new disposition categories | Provide a job aid mapping old practice to new categories |
| Sponsors/brokers confused by correction request process | Validate the correction journey with users before go-live |
| Version history perceived as added complexity | Emphasize audit and traceability benefits in training |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with reviewers, sponsors, and brokers
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
