# CM-FEAT-008 | Change Management Brief: Eligibility and Completeness Validation

*[Lire ce document en français](cm-feat-008-eligibility-and-completeness-validation-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-008 Eligibility and Completeness Validation](../features/feat-008-eligibility-and-completeness-validation.md)  
> **Parent change brief:** [CM-EPIC-002 Automated Underwriting Intake](cm-epic-002-automated-underwriting-intake.md)

## 1. Change Summary
Underwriters move from manually checking each case for eligibility and completeness to relying on automated eligibility checks, completeness checks, and a rule-result display, with a defined correction path for issues found.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Underwriter | Manually checks eligibility/completeness case by case | Reviews automated rule results and focuses on real exceptions | High |
| New business administrator | Fields questions when a case is deemed incomplete | Directs sponsors through the system's correction path | Medium |
| Plan sponsor administrator | Learns of eligibility/completeness issues after the fact | Sees rule results and correction guidance directly | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Underwriter manually opens and inspects the case file | Underwriter opens a case with rule results already computed |
| Provide information | N/A (validation step) | N/A |
| Resolve issues | Underwriter identifies gaps manually, contacts sponsor | System's rule-result display flags gaps automatically |
| Confirm and submit | Underwriter proceeds on manual judgment | Underwriter proceeds once eligibility/completeness checks pass |
| Check status | No consistent record of what was checked | Rule-result display provides a consistent audit trail |

## 4. What's Changing in Practice
- **New steps introduced:** Eligibility checks, completeness checks, rule-result display, correction path.
- **Steps removed/automated:** Manual, case-by-case eligibility/completeness assessment by the underwriter.
- **New rules users must follow:** Cases must pass automated eligibility/completeness checks (or have a documented exception) before proceeding.
- **New information users must provide/review:** Rule-result output showing which checks passed, failed, or require correction.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to interpret rule-result output and correction paths.
- Walkthrough/short video: Optional.
- In-app guidance: Rule-result display and correction path messaging (see Section 10, UX/Interface Considerations).
- FAQ: Yes — what to do when a rule result seems incorrect.

## 6. Local Champions / SME Support
- Named champions: to confirm within the underwriting team.
- Office hours during go-live: to confirm.
- Escalation path: underwriting lead for disputed rule results.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| First-pass success | % of cases passing checks without correction | To confirm | To approve | Product Owner / BA |
| Exceptions | % of cases requiring manual override | To confirm | To approve | Operations |
| Handling time | Time to resolve eligibility/completeness issues | To confirm | To approve | Operations |
| User experience | Underwriter confidence in automated results | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Rules are incomplete or contradictory at launch | Facilitate rule workshops and maintain a decision log |
| Underwriters distrust automated results and re-check manually anyway | Run a parallel validation period and review discrepancies before cutover |
| Correction path unclear to sponsors | Validate the correction journey with sponsor users before go-live |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with underwriters
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
