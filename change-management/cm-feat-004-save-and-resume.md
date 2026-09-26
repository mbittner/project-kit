# CM-FEAT-004 | Change Management Brief: Save and Resume

*[Lire ce document en français](cm-feat-004-save-and-resume-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-004 Save and Resume](../features/feat-004-save-and-resume.md)  
> **Parent change brief:** [CM-EPIC-001 Digital Group Setup and Data Collection](cm-epic-001-digital-group-setup-and-data-collection.md)

## 1. Change Summary
Sponsors no longer need to complete group setup in a single sitting or restart from scratch if interrupted. They can save a draft, see its status, and resume from the last completed section.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Completes forms in one sitting or restarts if interrupted | Saves drafts and resumes from the last completed section | Medium |
| New business administrator | Has no visibility into in-progress submissions | Can see draft status and follow up on abandoned drafts | Medium |
| Product Owner | Cannot measure where drop-off occurs | Uses completion/exception KPIs to identify friction points | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Starts a form with no persisted state | Opens the case and sees any existing draft |
| Provide information | Must finish in one sitting or lose progress | Saves progress at any point |
| Resolve issues | Restarts from the beginning after interruption | Resumes from the last completed section |
| Confirm and submit | No visibility into stalled submissions | Draft status is visible to the sponsor and admin |
| Check status | No tracking of abandoned attempts | Abandoned drafts are identified and can be followed up |

## 4. What's Changing in Practice
- **New steps introduced:** Draft save, resume from last completed section, draft status, abandoned-draft handling.
- **Steps removed/automated:** Starting over from scratch after an interruption.
- **New rules users must follow:** Only the authorized user (or delegate) may resume a saved draft.
- **New information users must provide/review:** Draft status and last-saved point within the submission.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to save, resume, and interpret draft status.
- Walkthrough/short video: Optional.
- In-app guidance: Clear progress/status language (see Section 10, UX/Interface Considerations).
- FAQ: Yes — what happens to abandoned drafts and how long they are retained.

## 6. Local Champions / SME Support
- Named champions: to confirm.
- Office hours during go-live: to confirm.
- Escalation path: new business administrator team for draft-recovery issues.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Completion | % of started journeys eventually completed (including resumed) | To confirm | To approve | Product Manager |
| Handling time | Elapsed time across save/resume sessions | To confirm | To approve | Operations |
| Exceptions | % of drafts abandoned without resolution | To confirm | To approve | Operations |
| User experience | Sponsor satisfaction with save/resume | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Users assume progress is lost and re-enter data unnecessarily | Communicate save/resume behavior clearly in-app and in training |
| Abandoned drafts accumulate without follow-up | Define and operationalize abandoned-draft handling rules |
| Retention/privacy requirements for stored drafts unresolved | Confirm retention, privacy, and records requirements before go-live |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsor users
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
