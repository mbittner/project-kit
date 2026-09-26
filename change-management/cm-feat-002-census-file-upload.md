# CM-FEAT-002 | Change Management Brief: Census File Upload

*[Lire ce document en français](cm-feat-002-census-file-upload-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-002 Census File Upload](../features/feat-002-census-file-upload.md)  
> **Parent change brief:** [CM-EPIC-001 Digital Group Setup and Data Collection](cm-epic-001-digital-group-setup-and-data-collection.md)

## 1. Change Summary
Plan sponsor administrators stop emailing employee census spreadsheets for manual line-by-line review. Instead, they upload census files against a template with row-level error feedback and can re-upload corrected files directly.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Plan sponsor administrator | Emails census spreadsheets in varying formats | Uploads structured files against template guidance | High |
| New business administrator | Manually reviews and reconciles census rows | Reviews row-level error output and validated uploads | High |
| Product Owner | Has limited visibility into census data quality issues | Tracks completion and error-rate KPIs | Low |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Sponsor emails a spreadsheet attachment | Sponsor opens the case and accesses census upload |
| Provide information | Free-form spreadsheet, inconsistent formatting | Uploads file following template guidance |
| Resolve issues | Admin manually finds and reports row errors by email | Row-level error view shows issues directly to the sponsor |
| Confirm and submit | Sponsor re-sends a corrected file by email | Sponsor performs a corrected re-upload in the same session |
| Check status | Asks admin whether the file was accepted | Views upload/validation status directly |

## 4. What's Changing in Practice
- **New steps introduced:** Template guidance, file upload, row-level error view, corrected re-upload.
- **Steps removed/automated:** Manual line-by-line reconciliation by administrators; email-based file exchange.
- **New rules users must follow:** Mandatory census fields and formats must be complete/correct before submission; invalid rows must be corrected before final acceptance.
- **New information users must provide/review:** Structured employee census data mapped to the required template.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — template field definitions and common formatting errors.
- Walkthrough/short video: Yes — upload and correction workflow demo.
- In-app guidance: Row-level error messaging (see Section 10, UX/Interface Considerations).
- FAQ: Yes — file format and encoding issues.

## 6. Local Champions / SME Support
- Named champions by team/region: to confirm.
- Office hours during go-live: to confirm, especially during first census cycle.
- Escalation path: new business administrator team, then Product Owner.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Upload completion rate | % of started uploads completed | To confirm | To approve | Product Manager |
| First-pass success | % of files accepted without correction | To confirm | To approve | Product Owner / BA |
| Handling time | Time from upload start to accepted file | To confirm | To approve | Operations |
| Exceptions | % of files requiring manual intervention | To confirm | To approve | Operations |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Sponsors continue emailing spreadsheets in non-standard formats | Retire the email intake path and provide a downloadable template |
| Large or malformed files cause repeated failed uploads | Provide clear file-size/format guidance and pre-upload checks |
| Data cannot support validation (e.g., missing authoritative source) | Assign data ownership and define correction handling before go-live |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with sponsor users
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
