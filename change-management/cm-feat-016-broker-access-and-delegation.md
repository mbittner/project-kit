# CM-FEAT-016 | Change Management Brief: Broker Access and Delegation

*[Lire ce document en français](cm-feat-016-broker-access-and-delegation-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-016 Broker Access and Delegation](../features/feat-016-broker-access-and-delegation.md)  
> **Parent change brief:** [CM-EPIC-005 External Broker Collaboration](cm-epic-005-external-broker-collaboration.md)

## 1. Change Summary
Brokers move from having no direct system access — relying on internal staff to relay case status — to role-based, delegated access to their assigned onboarding cases, with defined access controls and expiry.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Broker representative | Has no direct system access; relies on internal staff | Accesses assigned cases directly through delegated, role-based access | High |
| Plan sponsor administrator | Relies on broker relaying information manually | Interacts with a broker who now has direct case visibility | Low |
| New business operations user | Manually relays information between broker and sponsor | Provisions/manages broker access instead of relaying information | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Broker asks internal staff for a status update | Broker logs in and accesses their assigned cases directly |
| Provide information | N/A (access step) | N/A |
| Resolve issues | Access requests handled ad hoc, no formal process | Access entitlement and delegation are formally provisioned |
| Confirm and submit | No defined expiry for informal access arrangements | Access expiry rules are enforced automatically |
| Check status | Broker waits for staff to respond | Broker sees case status directly, in real time |

## 4. What's Changing in Practice
- **New steps introduced:** Case entitlement, delegated access, role controls, access expiry.
- **Steps removed/automated:** Manual relaying of case status by internal operations staff.
- **New rules users must follow:** Broker access must be explicitly entitled, role-controlled, and subject to expiry.
- **New information users must provide/review:** Access entitlement and delegation records for each broker relationship.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — broker onboarding guide covering login, access scope, and expiry.
- Walkthrough/short video: Yes — for brokers new to direct portal access.
- In-app guidance: Role controls and access-scope messaging (see Section 10, UX/Interface Considerations).
- FAQ: Yes — what to do if access expires or is not yet provisioned.

## 6. Local Champions / SME Support
- Named champions: to confirm among broker relationship managers.
- Office hours during go-live: to confirm, especially for initial broker provisioning.
- Escalation path: new business operations team for access provisioning issues.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Broker portal adoption | % of active brokers using delegated access vs. relying on staff | To confirm | To approve | Product Manager |
| Access provisioning time | Time from request to active broker access | To confirm | To approve | Operations |
| Exceptions | % of access issues requiring manual intervention | To confirm | To approve | Operations |
| Broker satisfaction | Post-launch survey score | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Access/delegation setup creates onboarding friction for brokers | Provide a simple provisioning process and dedicated support during rollout |
| Brokers continue contacting staff directly out of habit | Redirect requests to the portal and reinforce with communications |
| Role/access rules incomplete or too restrictive at launch | Validate access scenarios with a pilot group of brokers before full rollout |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with brokers and operations staff
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
