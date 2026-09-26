# CM-FEAT-007 | Change Management Brief: Underwriting Requirements Questionnaire

*[Lire ce document en français](cm-feat-007-underwriting-requirements-questionnaire-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-007 Underwriting Requirements Questionnaire](../features/feat-007-underwriting-requirements-questionnaire.md)  
> **Parent change brief:** [CM-EPIC-002 Automated Underwriting Intake](cm-epic-002-automated-underwriting-intake.md)

## 1. Change Summary
Underwriters, new business administrators, and plan sponsors move from generic, free-form underwriting forms to a conditional digital questionnaire that prompts for required evidence and tracks section completeness before submission.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Underwriter | Receives inconsistent, often incomplete underwriting forms | Receives structured, conditionally-completed questionnaires | High |
| New business administrator | Manually clarifies missing underwriting details with sponsors | Supports sponsors in completing the digital questionnaire | Medium |
| Plan sponsor administrator | Fills generic underwriting forms without guidance | Answers conditional questions with required evidence prompts | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Sponsor receives a generic underwriting form | Sponsor opens the conditional questionnaire in the case |
| Provide information | Answers static questions regardless of relevance | Answers conditional questions tailored to their situation |
| Resolve issues | Missing evidence discovered later by the underwriter | Required evidence prompts appear at the point of entry |
| Confirm and submit | Submits with unclear completeness | Section completeness is visible before submission |
| Check status | Underwriter manually checks what's missing | Review summary shows a complete picture at a glance |

## 4. What's Changing in Practice
- **New steps introduced:** Conditional questions, required evidence prompts, section completeness, review summary.
- **Steps removed/automated:** Manual identification of missing underwriting information by the underwriter.
- **New rules users must follow:** Required evidence must be provided before a section is considered complete.
- **New information users must provide/review:** Risk and plan information captured through conditional logic rather than static fields.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — for underwriters interpreting new completeness indicators.
- Walkthrough/short video: Yes — for sponsors navigating conditional questions.
- In-app guidance: Evidence prompts and section completeness indicators (see Section 10, UX/Interface Considerations).
- FAQ: Yes — clarifying why certain questions appear only in some cases.

## 6. Local Champions / SME Support
- Named champions: to confirm within the underwriting team.
- Office hours during go-live: to confirm for the first underwriting cycle.
- Escalation path: underwriting lead, then Product Owner for rule disputes.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Completion | % of questionnaires completed once started | To confirm | To approve | Product Manager |
| First-pass success | % complete without follow-up requests | To confirm | To approve | Product Owner / BA |
| Handling time | Time to complete the questionnaire | To confirm | To approve | Operations |
| Exceptions | % requiring manual underwriter intervention | To confirm | To approve | Operations |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Conditional logic rules are incomplete or contradictory | Facilitate rule workshops with underwriting SMEs before go-live |
| Sponsors bypass or misunderstand conditional questions | Validate journey with sponsor users and refine prompts |
| Underwriters distrust automated completeness signals | Run a parallel review period before full reliance on the indicator |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with underwriters and sponsors
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
