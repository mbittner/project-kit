# FEAT-013 | Feature Canvas: Automated Work Routing

*[Lire ce document en français](feat-013-automated-work-routing-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Parent epic:** [EPIC-004 Workflow and Case Management](../epics/epic-004-workflow-and-case-management.md)  
> **Change management brief:** [CM-FEAT-013 Automated Work Routing](../change-management/cm-feat-013-automated-work-routing.md)  
> **Important:** Targets, rules, fields, integrations, and control requirements are proposed examples and require validation.

## 1. Business Objective
Assign work based on case attributes, role, and routing rules.

## 2. Problem / Opportunity
Users need a consistent way to complete the activities supported by **Automated Work Routing**. The current-state details and baseline evidence must be confirmed through discovery.

## 3. Expected Business Value
Clearer accountability, fewer stalled cases, and more predictable handoffs.

## 4. Feature Description
Assign work based on case attributes, role, and routing rules. The feature should provide a clear status, preventive validation where appropriate, and traceable outcomes for authorized users.

## 5. Personas
- New business administrator
- Operations manager
- Assigned specialist

## 6. Scope
### In scope
- Routing rules
- Assignment queue
- Reassignment
- Routing audit history

### Out of scope
- Capabilities assigned to another feature or epic.
- Final technical implementation choices.
- Business-policy changes not explicitly approved.

## 7. Candidate User Journey
`Access authorized case → Open Automated Work Routing → Complete or review required information → Resolve validation issues → Confirm action → View updated status`

## 8. Business Rules to Validate
- Only authorized roles may view or change the relevant information.
- Mandatory inputs and evidence must be complete before the final action.
- Invalid or inconsistent information must produce an understandable correction path.
- Material actions and status changes must be traceable.
- Retention, privacy, accessibility, bilingual-content, and records requirements must be confirmed.

## 9. Data / Information
- Case and group identifiers
- Authorized party and role
- Feature-specific inputs, validation results, and status
- Created, updated, submitted, and completed timestamps
- Decision, exception, or correction reason where applicable
- Audit and measurement fields required by approved controls

## 10. UX / Interface Considerations
- Clear progress and status language
- Actionable validation messages placed near the issue
- Accessible keyboard, screen-reader, contrast, and focus behaviour
- Responsive behaviour for approved devices
- English and French content readiness where required

## 11. Dependencies
- Identity, access, and role model
- Authoritative business data and rules
- Workflow, notification, document, integration, and reporting services as applicable
- Architecture, security, privacy, compliance, accessibility, and operational approvals
- Related feature sequencing within the parent epic

## 12. Non-Functional Considerations
- Security and least-privilege access
- Privacy and data minimization
- Availability and recoverability appropriate to business criticality
- Performance targets based on expected usage and volume
- Auditability, monitoring, and support diagnostics
- Accessibility and bilingual experience requirements

## 13. KPIs and Measurement Plan
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Completion | Percentage of started feature journeys completed | To confirm | To approve | Product Manager |
| First-pass success | Percentage completed without correction or follow-up | To confirm | To approve | Product Owner / BA |
| Handling time | Elapsed or active time for the supported activity | To confirm | To approve | Operations |
| Exceptions | Percentage requiring manual intervention | To confirm | To approve | Operations |
| User experience | Approved satisfaction or usability measure | To confirm | To approve | Product / UX |

## 14. Risks and Mitigations
| Risk | Proposed mitigation |
|---|---|
| Rules are incomplete or contradictory | Facilitate rule workshops and maintain a decision log |
| Users bypass the feature | Validate journey with users and address process incentives |
| Data cannot support validation | Assign data ownership and define correction handling |
| Dependencies delay delivery | Sequence dependent work and expose readiness status |
| Measurement is added too late | Define event and KPI needs before detailed design |

## 15. Candidate Story Breakdown
- As an authorized user, I want to use **routing rules** so that I can complete the automated work routing activity accurately and efficiently.
- As an authorized user, I want to use **assignment queue** so that I can complete the automated work routing activity accurately and efficiently.
- As an authorized user, I want to use **reassignment** so that I can complete the automated work routing activity accurately and efficiently.
- As an authorized user, I want to use **routing audit history** so that I can complete the automated work routing activity accurately and efficiently.

## 16. Feature Readiness Checklist
- [ ] Business objective and expected value validated
- [ ] Personas and journey validated with users
- [ ] Scope, exclusions, and business rules agreed
- [ ] Data, integrations, dependencies, and NFRs reviewed
- [ ] UX direction and content needs identified
- [ ] KPI definitions, baseline plan, targets, and owner agreed
- [ ] Candidate stories mapped and sequenced
- [ ] Major decisions, risks, and assumptions assigned