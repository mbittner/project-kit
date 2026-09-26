# CM-FEAT-010 | Change Management Brief: Document Checklist and Secure Upload

*[Lire ce document en français](cm-feat-010-document-checklist-and-secure-upload-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-010 Document Checklist and Secure Upload](../features/feat-010-document-checklist-and-secure-upload.md)  
> **Parent change brief:** [CM-EPIC-003 Document Collection and E-Signature](cm-epic-003-document-collection-and-e-signature.md)

## 1. Change Summary
Sponsors and brokers move from emailing documents with no clear list of what's outstanding to using a dynamic checklist and secure upload, with visible requirement status and file validation.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Emails documents as attachments without a clear checklist | Uploads documents against a dynamic checklist | High |
| Broker representative | Forwards or collects sponsor documents manually | Uses the same secure upload and checklist | Medium |
| Document reviewer | Manually tracks which documents have arrived | Sees requirement status directly in the system | High |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Sponsor/broker emails documents without a defined list | Sponsor/broker opens the case and sees the dynamic checklist |
| Provide information | Attaches files of varying formats/quality by email | Uploads files securely with built-in file validation |
| Resolve issues | Reviewer manually flags rejected/invalid files | File validation flags issues at the point of upload |
| Confirm and submit | No clear signal of what remains outstanding | Requirement status shows what's complete and outstanding |
| Check status | Sponsor/broker calls to check what's missing | Requirement status is visible directly to all parties |

## 4. What's Changing in Practice
- **New steps introduced:** Dynamic checklist, secure upload, file validation, requirement status.
- **Steps removed/automated:** Manual tracking of received documents; email-based file exchange.
- **New rules users must follow:** Uploaded files must pass validation (format, size, type) before being accepted.
- **New information users must provide/review:** Real-time requirement status showing outstanding vs. satisfied checklist items.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — accepted file types/sizes and checklist navigation.
- Walkthrough/short video: Yes — for sponsors and brokers unfamiliar with the portal.
- In-app guidance: File validation messaging (see Section 10, UX/Interface Considerations).
- FAQ: Yes — handling rejected or oversized files.

## 6. Local Champions / SME Support
- Named champions: to confirm among document reviewers.
- Office hours during go-live: to confirm.
- Escalation path: document reviewer team, then Product Owner for recurring upload issues.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Digital document adoption | % of documents submitted via portal vs. email | To confirm | To approve | Product Manager |
| Completion | % of checklists fully satisfied without re-request | To confirm | To approve | Product Owner / BA |
| Exceptions | % of files failing validation on first attempt | To confirm | To approve | Operations |
| Handling time | Time from checklist start to all items satisfied | To confirm | To approve | Operations |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Sponsors/brokers keep emailing documents out of habit | Restrict/retire the email intake path and set a clear cutover date |
| File validation rejects legitimate documents | Validate journey with users and tune validation rules pre-launch |
| Checklist requirements unclear or incomplete at launch | Confirm the document checklist definitions before go-live |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsors, brokers, and reviewers
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
