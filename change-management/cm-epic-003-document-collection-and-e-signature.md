# CM-EPIC-003 | Change Management Brief: Document Collection and E-Signature

*[Lire ce document en français](cm-epic-003-document-collection-and-e-signature-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source epic:** [EPIC-003 Document Collection and E-Signature](../epics/epic-003-document-collection-and-e-signature.md)  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Child feature briefs:** [CM-FEAT-010](cm-feat-010-document-checklist-and-secure-upload.md) · [CM-FEAT-011](cm-feat-011-document-review-and-version-status.md) · [CM-FEAT-012](cm-feat-012-electronic-signature-workflow.md)

## 1. Change Summary
Plan sponsors, brokers, and document reviewers move from emailing document attachments back and forth to a controlled digital checklist, secure upload, versioned review, and electronic signature workflow.

## 2. Business Driver
- **Problem being solved:** Manual document exchanges, fragmented information, delayed validation, and limited status visibility across the current onboarding journey.
- **Expected value:** Fewer email attachments, better document completeness, and improved auditability.
- **What happens if we do nothing:** Document collection remains scattered across email threads, version control stays informal, and audit evidence of receipt/acceptance/signature remains incomplete.

## 3. Impacted Stakeholder Groups
| Stakeholder group | Role today | Role after change | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Emails documents as attachments | Uploads documents against a dynamic checklist and signs electronically | High |
| Broker representative | Forwards or collects sponsor documents manually | Submits and tracks documents through the same secure portal | Medium |
| Document reviewer | Manually tracks receipt/version/acceptance in email or spreadsheets | Classifies documents as received/accepted/needs correction with full version history | High |

## 4. Nature of the Change
- **Process change:** Document collection becomes checklist-driven with visible requirement status instead of ad hoc email attachments.
- **Tool/system change:** Introduction of secure upload, document versioning/review, and an electronic signature workflow.
- **Role/responsibility change:** Reviewers formally classify and disposition documents rather than tracking status informally.
- **Policy/rule change:** Document acceptance and signature completion become explicit, auditable statuses.

## 5. Change Impact Assessment
| Dimension | Current state | Future state | Gap / disruption |
|---|---|---|---|
| Process | Email-based document exchange, informal tracking | Checklist-driven secure upload with visible status | Users must adopt the portal instead of email |
| Tools/systems | Email attachments, shared drives | Secure upload, version history, e-signature | New login/access and signature tooling |
| Roles/skills | Manual document tracking | Structured review disposition and correction requests | Reviewers need training on disposition categories |
| Volume/workload | Time spent re-requesting missing/incorrect documents | Reduced re-requests due to checklist and validation | Short-term increase in correction requests as rules stabilize |

## 6. Communication Plan
| Audience | Key message | Channel | Timing | Owner |
|---|---|---|---|---|
| Plan sponsors and brokers | Documents are now submitted and signed through a secure online checklist | Sponsor/broker bulletin, in-app guidance | 2–4 weeks before go-live | Product Owner |
| Document reviewers | Review and disposition happens in the new portal with version history | Team briefing, updated procedures | 2 weeks before go-live | Operations manager |
| Executive sponsor | This epic improves document completeness and auditability | Steering committee update | Pre-build and pre-launch | Product Manager |

## 7. Training and Enablement Needs
- Roles requiring formal training: document reviewers (disposition and correction workflow), sponsors/brokers (checklist and e-signature).
- Format: instructor-led session for reviewers; short video/quick guide for sponsors and brokers.
- Owner and target completion date: to confirm.
- Source material: UX / Interface Considerations sections of the three child feature canvases.

## 8. Resistance Risks and Mitigations
| Risk | Likely source | Mitigation |
|---|---|---|
| Sponsors/brokers keep emailing documents out of habit | External users | Restrict or retire the email intake channel at go-live; reinforce with communications |
| Reviewers uncertain about new disposition categories | Document reviewers | Provide a clear job aid mapping old practice to new categories |
| E-signature not accepted for all document types | Legal/compliance | Confirm eligible document list before go-live (see source epic, Scope) |

## 9. Readiness and Go-Live Criteria
- [ ] All three child features approved and in scope
- [ ] Sponsors, brokers, and reviewers identified and briefed
- [ ] Pre-launch communications executed
- [ ] Training completed for reviewers and self-service materials published for sponsors/brokers
- [ ] Hypercare support model in place for first document cycle
- [ ] Fallback to manual document handling defined in case of major defects
- [ ] Epic Readiness Criteria (source epic, Section 10) satisfied

## 10. Adoption and Benefits Measurement
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Digital document adoption | % of documents submitted via the portal vs. email | To confirm | To approve | Product Manager |
| Document completeness | % of checklists fully satisfied without re-request | To confirm | To approve | Operations |
| Signature completion time | Time from send to fully executed | To confirm | To approve | Operations |
| Reviewer satisfaction | Post-launch survey score | To confirm | To approve | Product / UX |

*(Rolls up to initiative-level Manual handling rate and Rework/clarification rate measures.)*

## 11. Approval Checklist
- [ ] Change sponsor named
- [ ] Stakeholder impact assessment reviewed
- [ ] Communication and training plans approved
- [ ] Adoption measures and owners agreed
- [ ] Go-live and hypercare support confirmed
