# CM-EPIC-001 | Change Management Brief: Digital Group Setup and Data Collection

*[Lire ce document en français](cm-epic-001-digital-group-setup-and-data-collection-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source epic:** [EPIC-001 Digital Group Setup and Data Collection](../epics/epic-001-digital-group-setup-and-data-collection.md)  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Child feature briefs:** [CM-FEAT-001](cm-feat-001-online-group-setup-wizard.md) · [CM-FEAT-002](cm-feat-002-census-file-upload.md) · [CM-FEAT-003](cm-feat-003-real-time-data-validation.md) · [CM-FEAT-004](cm-feat-004-save-and-resume.md) · [CM-FEAT-005](cm-feat-005-submission-review-and-attestation.md) · [CM-FEAT-006](cm-feat-006-submission-confirmation-and-notifications.md)

## 1. Change Summary
Plan sponsors move from manual, email- and spreadsheet-based group setup and census submission to a guided, self-service digital wizard with real-time validation, save/resume, and a consolidated attestation step. New business administrators move from chasing incomplete or inconsistent submissions to reviewing structured, pre-validated intake.

## 2. Business Driver
- **Problem being solved:** Manual exchanges, fragmented information, delayed validation, and limited status visibility across the current onboarding journey.
- **Expected value:** Faster intake, improved completeness, fewer manual exchanges, and earlier validation.
- **What happens if we do nothing:** Onboarding delays and rework persist, sponsors continue to experience an inconsistent intake process, and internal teams keep absorbing the cost of chasing missing or incorrect information.

## 3. Impacted Stakeholder Groups
| Stakeholder group | Role today | Role after change | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Submits company, division, class, billing, and census information via forms, spreadsheets, and email | Completes a guided digital wizard, uploads census files, resolves validation errors in real time, and attests before submission | High |
| New business administrator | Manually keys, reconciles, and follows up on incomplete or inconsistent submissions | Reviews structured, pre-validated submissions and manages the smaller set of true exceptions | High |
| Product Owner / Product Manager | Manages requirements and priorities informally | Owns a KPI-driven backlog across the six child features | Low |

## 4. Nature of the Change
- **Process change:** Group setup and census intake move from a manual, back-and-forth exchange to a single guided digital session with in-line correction.
- **Tool/system change:** Introduction of the Online Group Setup Wizard, Census File Upload, and Save and Resume capabilities; retirement of ad hoc intake templates/email threads where feasible.
- **Role/responsibility change:** New business administrators shift from data entry and chasing to exception handling and review.
- **Policy/rule change:** Required fields, formats, and cross-field rules become explicit and enforced before submission rather than discovered downstream.

## 5. Change Impact Assessment
| Dimension | Current state | Future state | Gap / disruption |
|---|---|---|---|
| Process | Multiple manual touchpoints, no visible status | Single guided digital journey with visible progress and status | Sponsors and admins must unlearn existing email-based habits |
| Tools/systems | Spreadsheets, email, shared documents | Online wizard, structured census upload, digital review/attestation | New system access and login for sponsors |
| Roles/skills | Manual reconciliation skillset | Exception triage and digital review skillset | New business admins need training on exception queues |
| Volume/workload | High manual effort per case | Lower manual effort, concentrated on exceptions | Short-term dip in throughput during transition expected |

## 6. Communication Plan
| Audience | Key message | Channel | Timing | Owner |
|---|---|---|---|---|
| Executive sponsor | This epic reduces cycle time and rework in new group intake | Steering committee update | Pre-build and pre-launch | Product Manager |
| Plan sponsor administrators | A new guided online process replaces manual forms and email for group setup | Broker/sponsor bulletin, in-app banner | 2–4 weeks before go-live | Product Owner |
| New business administrators | Intake review shifts from manual entry to exception handling | Team briefing, updated procedures | 2 weeks before go-live | Operations manager |
| Broker network | New group setup submissions will arrive pre-validated | Broker communication | At go-live | Business stakeholder lead |

## 7. Training and Enablement Needs
- Roles requiring formal training: new business administrators (exception review), plan sponsor administrators (self-service quick start).
- Format: short walkthrough video and quick-reference guide for sponsors; instructor-led session and job aid for new business administrators.
- Owner and target completion date: to confirm.
- Source material: UX / Interface Considerations sections of the six child feature canvases.

## 8. Resistance Risks and Mitigations
| Risk | Likely source | Mitigation |
|---|---|---|
| Sponsors continue to submit information by email out of habit | Plan sponsor administrators | Retire or restrict legacy channels at go-live; reinforce with broker communications |
| Perceived loss of control over data quality | New business administrators | Show that validation catches more errors earlier, reducing rework downstream |
| Rules remain unresolved at launch | Business/product | Maintain the epic's decision log with due dates and owners (see source epic, Section 9) |

## 9. Readiness and Go-Live Criteria
- [ ] All six child features approved and in scope
- [ ] Plan sponsor and new business administrator groups identified and briefed
- [ ] Pre-launch communications executed
- [ ] Training completed for new business administrators and self-service materials published for sponsors
- [ ] Hypercare support model in place for first submission cycle
- [ ] Fallback to manual intake defined in case of major defects
- [ ] Epic Readiness Criteria (source epic, Section 10) satisfied

## 10. Adoption and Benefits Measurement
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Digital adoption rate | % of new group submissions completed via the wizard vs. legacy channels | To confirm | To approve | Product Manager |
| First-pass completeness | % of submissions requiring no follow-up | To confirm | To approve | Product Owner / BA |
| Manual handling rate | % of cases still requiring manual reconciliation | To confirm | To approve | Operations |
| Sponsor satisfaction | Post-submission survey score | To confirm | To approve | Product / UX |

*(Rolls up to initiative-level Onboarding cycle time, First-pass completeness, Manual handling rate, and Digital adoption measures.)*

## 11. Approval Checklist
- [ ] Change sponsor named
- [ ] Stakeholder impact assessment reviewed
- [ ] Communication and training plans approved
- [ ] Adoption measures and owners agreed
- [ ] Go-live and hypercare support confirmed
