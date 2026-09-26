# CM-FEAT-012 | Change Management Brief: Electronic Signature Workflow

*[Lire ce document en français](cm-feat-012-electronic-signature-workflow-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-012 Electronic Signature Workflow](../features/feat-012-electronic-signature-workflow.md)  
> **Parent change brief:** [CM-EPIC-003 Document Collection and E-Signature](cm-epic-003-document-collection-and-e-signature.md)

## 1. Change Summary
Sponsors, brokers, and document reviewers move from printed/physical signatures or ad hoc e-signature tools tracked manually to a managed electronic signature workflow with signer assignment, status tracking, and a completed-document receipt.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Signs physically or via disconnected e-signature tools | Signs through an integrated, tracked signature workflow | High |
| Broker representative | Manually coordinates signature collection | Assigns signers and monitors status in the system | Medium |
| Document reviewer | Manually confirms signatures are complete | Relies on automated status tracking and a completed-document receipt | High |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Reviewer manually prepares documents for signature | Reviewer sends a signature package directly from the case |
| Provide information | Signers identified informally via email | Signer assignment is defined explicitly in the system |
| Resolve issues | Status of signatures tracked manually, often unclear | Status tracking shows real-time signature progress |
| Confirm and submit | Completion confirmed via a returned scanned document | Completed-document receipt is generated automatically |
| Check status | Reviewer follows up individually with each signer | All parties see current signature status directly |

## 4. What's Changing in Practice
- **New steps introduced:** Signature package, signer assignment, status tracking, completed-document receipt.
- **Steps removed/automated:** Manual coordination of physical or disconnected e-signature processes.
- **New rules users must follow:** Only eligible document types may be routed through the electronic signature workflow.
- **New information users must provide/review:** Signer assignments and real-time completion status for each package.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to assign signers and interpret status tracking.
- Walkthrough/short video: Yes — end-to-end signature workflow demo.
- In-app guidance: Status tracking display (see Section 10, UX/Interface Considerations).
- FAQ: Yes — which documents are eligible for e-signature.

## 6. Local Champions / SME Support
- Named champions: to confirm among document reviewers and brokers.
- Office hours during go-live: to confirm.
- Escalation path: document reviewer lead, then legal/compliance for signature-eligibility questions.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Signature completion time | Time from send to fully executed | To confirm | To approve | Operations |
| Digital adoption | % of eligible documents signed electronically | To confirm | To approve | Product Manager |
| Exceptions | % of signature packages requiring manual intervention | To confirm | To approve | Operations |
| User experience | Sponsor/broker satisfaction with e-signature | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| E-signature not accepted for all document types | Confirm the eligible document list with legal/compliance before go-live |
| Signers unfamiliar with the electronic process abandon it | Provide a short walkthrough video and dedicated support at go-live |
| Status tracking data incomplete due to integration issues | Validate integration with the signature provider before launch |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsors, brokers, and reviewers
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
