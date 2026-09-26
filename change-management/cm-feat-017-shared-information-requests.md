# CM-FEAT-017 | Change Management Brief: Shared Information Requests

*[Lire ce document en français](cm-feat-017-shared-information-requests-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-017 Shared Information Requests](../features/feat-017-shared-information-requests.md)  
> **Parent change brief:** [CM-EPIC-005 External Broker Collaboration](cm-epic-005-external-broker-collaboration.md)

## 1. Change Summary
Sponsors and brokers move from exchanging requests via email with no visible owner or status to responding to shared information requests that show a clear assigned responder, submission path, and status.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Responds to email requests with no tracked status | Responds to shared requests with visible owner and status | Medium |
| New business administrator | Manually tracks who owes what information | Sees request status directly without following up individually | Medium |
| Product Owner | Has no visibility into request cycle times | Uses request-status KPIs to identify friction | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Sponsor/broker receives a request by email | Sponsor/broker sees the request directly in the case |
| Provide information | Replies by email, easy to lose track of | Submits a response through a structured response submission |
| Resolve issues | No clear owner if a request is unanswered | Assigned responder is visible to all parties |
| Confirm and submit | No consistent record that a request was fulfilled | Request status updates automatically upon response |
| Check status | Staff follow up manually to check on outstanding requests | Request status is visible to all parties in real time |

## 4. What's Changing in Practice
- **New steps introduced:** Request creation, assigned responder, response submission, request status.
- **Steps removed/automated:** Manual follow-up to track down request owners and outstanding items.
- **New rules users must follow:** Each request must have an assigned responder and a trackable status.
- **New information users must provide/review:** Structured responses tied to specific tracked requests.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to respond to a shared request and check its status.
- Walkthrough/short video: Optional.
- In-app guidance: Assigned responder and status indicators (see Section 10, UX/Interface Considerations).
- FAQ: Yes — what happens if a request is not answered in time.

## 6. Local Champions / SME Support
- Named champions: to confirm among new business administrators.
- Office hours during go-live: to confirm.
- Escalation path: new business administrator team for unresolved requests.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Request response time | Time from request creation to response | To confirm | To approve | Operations |
| Duplicate request rate | % of requests identified as duplicates | To confirm | To approve | Operations |
| Completion | % of requests reaching a closed status | To confirm | To approve | Product Manager |
| User experience | Sponsor/broker satisfaction with the request process | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Sponsors/brokers reply by email instead of using the system | Redirect all new requests through the portal and set a clear cutover date |
| Assigned responder unclear or incorrectly set | Validate assignment logic with users before go-live |
| Requests duplicated across broker and sponsor channels | Reinforce single-request-per-item design in training |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsors and brokers
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
