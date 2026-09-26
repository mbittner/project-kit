# CM-EPIC-002 | Change Management Brief: Automated Underwriting Intake

*[Lire ce document en français](cm-epic-002-automated-underwriting-intake-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source epic:** [EPIC-002 Automated Underwriting Intake](../epics/epic-002-automated-underwriting-intake.md)  
> **Parent initiative:** [INIT-001 Modernize New Business Onboarding](../initiative/init-001-modernize-new-business-onboarding.md)  
> **Child feature briefs:** [CM-FEAT-007](cm-feat-007-underwriting-requirements-questionnaire.md) · [CM-FEAT-008](cm-feat-008-eligibility-and-completeness-validation.md) · [CM-FEAT-009](cm-feat-009-underwriting-referral-and-decision-tracking.md)

## 1. Change Summary
Underwriters and new business administrators move from free-form underwriting intake documents to a conditional, structured questionnaire with automated eligibility and completeness checks, and a formal referral/decision-tracking process for exceptions.

## 2. Business Driver
- **Problem being solved:** Manual exchanges, fragmented information, delayed validation, and limited status visibility across the current onboarding journey — specifically incomplete or inconsistent underwriting submissions.
- **Expected value:** More complete underwriting intake, reduced follow-up, and clearer decision readiness.
- **What happens if we do nothing:** Underwriters continue to receive incomplete submissions, decisions are delayed, and rationale for referrals is not consistently captured.

## 3. Impacted Stakeholder Groups
| Stakeholder group | Role today | Role after change | Impact level |
|---|---|---|---|
| Underwriter | Reviews inconsistent free-form submissions, manually tracks decisions | Reviews structured, validated submissions and works exceptions through a formal referral queue | High |
| New business administrator | Collects underwriting information manually from sponsors | Supports sponsors in completing the digital questionnaire | Medium |
| Plan sponsor administrator | Provides underwriting information via unstructured forms | Completes conditional digital questionnaire with required evidence prompts | Medium |

## 4. Nature of the Change
- **Process change:** Underwriting intake becomes a conditional questionnaire; incomplete/inconsistent cases are automatically identified rather than discovered manually.
- **Tool/system change:** Introduction of the Underwriting Requirements Questionnaire, Eligibility and Completeness Validation, and Referral and Decision Tracking capabilities.
- **Role/responsibility change:** Underwriters spend less time chasing missing information and more time on referred exceptions with documented rationale.
- **Policy/rule change:** Eligibility and completeness rules become explicit, automated checks rather than underwriter judgment calls at intake.

## 5. Change Impact Assessment
| Dimension | Current state | Future state | Gap / disruption |
|---|---|---|---|
| Process | Ad hoc underwriting intake and manual decision tracking | Structured questionnaire with automated eligibility checks and tracked referrals | Underwriters must trust automated completeness checks |
| Tools/systems | Documents/email, personal tracking sheets | Digital questionnaire, validation engine, referral queue | New queue-based way of working |
| Roles/skills | Manual completeness assessment | Exception-based review and documented decision rationale | Requires discipline in recording rationale consistently |
| Volume/workload | High rework due to incomplete submissions | Lower rework, concentrated effort on true risk exceptions | Possible short-term increase in referrals as rules are tuned |

## 6. Communication Plan
| Audience | Key message | Channel | Timing | Owner |
|---|---|---|---|---|
| Underwriting leadership | This epic reduces incomplete submissions and clarifies decision rationale | Steering/underwriting governance update | Pre-build and pre-launch | Product Manager |
| Underwriters | New referral and decision-tracking queue replaces informal tracking | Team briefing, updated procedures | 2 weeks before go-live | Operations manager |
| Plan sponsor / broker | Underwriting information is now collected through a guided questionnaire | Broker/sponsor bulletin | At go-live | Business stakeholder lead |

## 7. Training and Enablement Needs
- Roles requiring formal training: underwriters (referral queue, decision rationale capture), new business administrators (supporting sponsors through the questionnaire).
- Format: instructor-led session for underwriters; quick-reference guide for administrators.
- Owner and target completion date: to confirm.
- Source material: UX / Interface Considerations sections of the three child feature canvases.

## 8. Resistance Risks and Mitigations
| Risk | Likely source | Mitigation |
|---|---|---|
| Underwriters distrust automated eligibility/completeness checks | Underwriting team | Run a parallel validation period and review false positives/negatives before full cutover |
| Referral queue seen as added administrative burden | Underwriters | Demonstrate reduction in time spent chasing information |
| Feature teams optimize locally against shared KPIs | Delivery teams | Review end-to-end journey and shared KPIs regularly (see source epic, Section 9) |

## 9. Readiness and Go-Live Criteria
- [ ] All three child features approved and in scope
- [ ] Underwriters and administrators identified and briefed
- [ ] Pre-launch communications executed
- [ ] Training completed for underwriters and administrators
- [ ] Hypercare support model in place for first underwriting cycle
- [ ] Fallback to manual review defined in case of major defects
- [ ] Epic Readiness Criteria (source epic, Section 10) satisfied

## 10. Adoption and Benefits Measurement
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Underwriting first-pass completeness | % of questionnaires complete without follow-up | To confirm | To approve | Product Manager |
| Referral cycle time | Time from referral creation to recorded decision | To confirm | To approve | Operations |
| Decision rationale capture rate | % of decisions with documented rationale | To confirm | To approve | Underwriting lead |
| Underwriter satisfaction | Post-launch survey score | To confirm | To approve | Product / UX |

*(Rolls up to initiative-level Onboarding cycle time, First-pass completeness, and Rework/clarification rate measures.)*

## 11. Approval Checklist
- [ ] Change sponsor named
- [ ] Stakeholder impact assessment reviewed
- [ ] Communication and training plans approved
- [ ] Adoption measures and owners agreed
- [ ] Go-live and hypercare support confirmed
