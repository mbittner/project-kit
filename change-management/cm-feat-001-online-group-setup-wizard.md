# CM-FEAT-001 | Change Management Brief: Online Group Setup Wizard

*[Lire ce document en français](cm-feat-001-online-group-setup-wizard-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-001 Online Group Setup Wizard](../features/feat-001-online-group-setup-wizard.md)  
> **Parent change brief:** [CM-EPIC-001 Digital Group Setup and Data Collection](cm-epic-001-digital-group-setup-and-data-collection.md)

## 1. Change Summary
Plan sponsor administrators stop assembling company, division, class, billing, and submission information across separate forms, spreadsheets, and emails. Instead, they complete a single guided digital wizard with progress tracking, contextual help, and review navigation.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Assembles setup information manually across forms/email | Completes guided sections in the wizard with contextual help | High |
| New business administrator | Reconciles and chases missing/incorrect setup details | Reviews a complete, structured submission | Medium |
| Product Owner | Gathers requirements informally from field feedback | Uses wizard completion/first-pass KPIs to prioritize backlog | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Sponsor locates the right form/template via email | Sponsor opens an authorized case directly in the wizard |
| Provide information | Fills disconnected forms/spreadsheets over time | Completes guided sections with a visible progress indicator |
| Resolve issues | Errors found later by staff, requiring back-and-forth | Errors surfaced immediately with actionable guidance |
| Confirm and submit | Submits via email with no formal confirmation | Confirms action through the wizard's review navigation |
| Check status | Calls or emails to ask about status | Views updated status directly in the wizard |

## 4. What's Changing in Practice
- **New steps introduced:** Guided sections, progress indicator, contextual help, review navigation.
- **Steps removed/automated:** Manual assembly of multiple forms/spreadsheets; email-based back-and-forth for missing details.
- **New rules users must follow:** Only authorized roles may view/change setup information; mandatory inputs must be complete before submission; invalid data must be corrected before proceeding.
- **New information users must provide/review:** Structured company, division, class, billing, and submission data with validation status visible throughout.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — one-page wizard walkthrough for sponsors.
- Walkthrough/short video: Yes — 3–5 minute video covering guided sections and save points.
- In-app guidance: Progress indicator and contextual help built into the feature (see Section 10, UX/Interface Considerations).
- FAQ: Yes — common validation errors and how to resolve them.

## 6. Local Champions / SME Support
- Named champions by team/region: to confirm with new business operations lead.
- Office hours during go-live: to confirm.
- Escalation path for issues found post-launch: route to new business administrator team, then Product Owner.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Wizard completion rate | % of started wizard journeys completed | To confirm | To approve | Product Manager |
| First-pass success | % completed without correction or follow-up | To confirm | To approve | Product Owner / BA |
| Handling time | Elapsed/active time to complete setup | To confirm | To approve | Operations |
| User experience | Sponsor satisfaction with the wizard | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Sponsors revert to emailing information directly | Restrict/retire the email intake path and redirect to the wizard |
| Confusion during a parallel-run transition period | Communicate a clear cutover date for the legacy process |
| Business rules incomplete at launch, causing inconsistent validation | Facilitate rule workshops and maintain a decision log before go-live |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsor users
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
