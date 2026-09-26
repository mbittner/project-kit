# CM-EPIC-005 | Change Management Brief: External Broker Collaboration

*[Lire ce document en français](cm-epic-005-external-broker-collaboration-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source epic:** [EPIC-005 External Broker Collaboration](../epics/epic-005-external-broker-collaboration.md)  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Child feature briefs:** [CM-FEAT-016](cm-feat-016-broker-access-and-delegation.md) · [CM-FEAT-017](cm-feat-017-shared-information-requests.md) · [CM-FEAT-018](cm-feat-018-collaboration-history-and-notifications.md)

## 1. Change Summary
Brokers, plan sponsors, and new business operations users move from unstructured email-based collaboration to role-based portal access, shared information requests with visible owners and status, and a tracked collaboration history with notifications.

## 2. Business Driver
- **Problem being solved:** Manual, unstructured email exchanges between brokers and sponsors, fragmented information, and limited status visibility.
- **Expected value:** Improved collaboration, fewer duplicate requests, and clearer responsibility between broker and sponsor.
- **What happens if we do nothing:** Requests continue to be duplicated or lost in email, and it remains unclear who owns a given piece of outstanding information.

## 3. Impacted Stakeholder Groups
| Stakeholder group | Role today | Role after change | Impact level |
|---|---|---|---|
| Broker representative | Collaborates via email/phone with no formal access to case status | Accesses assigned cases through role-based, delegated portal access | High |
| Plan sponsor administrator | Sends/receives requests informally | Responds to shared information requests with visible ownership and status | Medium |
| New business operations user | Manually relays information between broker and sponsor | Monitors collaboration history and notifications directly in the system | Medium |

## 4. Nature of the Change
- **Process change:** Broker collaboration moves from unstructured email to structured, trackable requests with clear ownership.
- **Tool/system change:** Introduction of broker portal access/delegation, shared information requests, and collaboration history/notifications.
- **Role/responsibility change:** Brokers gain direct, delegated access instead of relying on internal staff to relay information.
- **Policy/rule change:** Access entitlement, delegation, and expiry rules must be explicitly defined and enforced.

## 5. Change Impact Assessment
| Dimension | Current state | Future state | Gap / disruption |
|---|---|---|---|
| Process | Email-based, ad hoc collaboration | Structured requests with visible owner and status | Brokers and sponsors must adopt a new collaboration channel |
| Tools/systems | Email/phone | Broker portal with delegated, role-based access | New credentials and access provisioning for brokers |
| Roles/skills | Manual relaying of information | Self-service request response and monitoring | Operations users shift from relay to oversight role |
| Volume/workload | Duplicate/lost requests requiring rework | Reduced duplication due to visible ownership | Initial access provisioning effort for existing broker relationships |

## 6. Communication Plan
| Audience | Key message | Channel | Timing | Owner |
|---|---|---|---|---|
| Broker network | Brokers will get direct, secure access to assigned cases and requests | Broker bulletin, onboarding guide | 3–4 weeks before go-live | Product Owner |
| Plan sponsors | Information requests will now be tracked with visible status | Sponsor bulletin | 2 weeks before go-live | Product Owner |
| New business operations | Collaboration is now tracked in-system rather than relayed manually | Team briefing | 2 weeks before go-live | Operations manager |

## 7. Training and Enablement Needs
- Roles requiring formal training: brokers (portal access and request response), operations users (monitoring collaboration history).
- Format: broker onboarding guide/video; quick-reference guide for operations users.
- Owner and target completion date: to confirm.
- Source material: UX / Interface Considerations sections of the three child feature canvases.

## 8. Resistance Risks and Mitigations
| Risk | Likely source | Mitigation |
|---|---|---|
| Brokers continue to use email/phone out of habit | Broker network | Set an explicit cutover date and route new requests only through the portal |
| Access/delegation setup creates onboarding friction for brokers | Brokers, operations | Provide a simple provisioning process and dedicated support during rollout |
| Sponsors and brokers unclear who owns a given request | All roles | Reinforce the visible-owner design in communications and training |

## 9. Readiness and Go-Live Criteria
- [ ] All three child features approved and in scope
- [ ] Brokers, sponsors, and operations users identified and briefed
- [ ] Pre-launch communications executed
- [ ] Broker access/delegation provisioned and validated
- [ ] Hypercare support model in place for first collaboration cycle
- [ ] Fallback to email collaboration defined in case of major defects
- [ ] Epic Readiness Criteria (source epic, Section 10) satisfied

## 10. Adoption and Benefits Measurement
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Broker portal adoption | % of active brokers using portal access vs. email | To confirm | To approve | Product Manager |
| Duplicate request rate | % of requests identified as duplicates | To confirm | To approve | Operations |
| Request response time | Time from request creation to response | To confirm | To approve | Operations |
| Broker satisfaction | Post-launch survey score | To confirm | To approve | Product / UX |

*(Rolls up to initiative-level Sponsor satisfaction and Digital adoption measures.)*

## 11. Approval Checklist
- [ ] Change sponsor named
- [ ] Stakeholder impact assessment reviewed
- [ ] Communication and training plans approved
- [ ] Adoption measures and owners agreed
- [ ] Go-live and hypercare support confirmed
