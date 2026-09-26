# Stakeholder Register

*[Registre des parties prenantes en français](stakeholder-register-fr.md)*

This register is the single source of truth for who is involved in this pack's work — so every Initiative, Epic, Feature, User Story, and Change Management brief can *reference* a stakeholder instead of redefining them from scratch. See the [stakeholder-register-validation](.github/skills/stakeholder-register-validation/SKILL.md) skill for how documents are kept in sync with this file.

Two kinds of entries, by design:
- **Governance & Delivery Roles** — named individuals (Sponsor, Product Manager, Product Owner, Architect, etc.) accountable for decisions and delivery.
- **Impacted Stakeholder Groups** — teams/roles *affected by* the change, tracked by group or role, not by individual name.

## Governance & Delivery Roles

| Role | Name | Scope | Notes |
|---|---|---|---|
| Executive Sponsor | To confirm | INIT-001 | Accountable for strategic outcome, investment, and escalation decisions |
| Business Owner | To confirm | INIT-001 | Accountable for business priorities, policy decisions, and realized operational value |
| Product Manager | To confirm | INIT-001 (all epics) | Owns the value proposition, roadmap, and KPI framework across epics |
| Product Owner | To confirm | INIT-001 (all epics/features) | Owns feature sequencing, backlog priority, and acceptance decisions |
| Business Analyst | To confirm | INIT-001 (all epics/features) | Owns discovery, requirements quality, and traceability |
| Solution Architect | To confirm | INIT-001 | Owns architecture, integration, and technical constraints |
| UX / Service Design Lead | To confirm | INIT-001 | Owns journey, interaction, and accessibility design |
| Data / Security / Privacy / Compliance Lead | To confirm | INIT-001 | Owns domain controls and required approvals |
| Delivery / QA Lead | To confirm | INIT-001 | Owns build, technical quality, and release readiness |

## Impacted Stakeholder Groups

| Group | Overall Impact Level |
|---|---|
| [Plan Sponsor Administrator](#plan-sponsor-administrator) | High |
| [New Business Administrator](#new-business-administrator) | Medium-High |
| [Underwriter](#underwriter) | High |
| [Broker Representative](#broker-representative) | Medium-High |
| [Document Reviewer](#document-reviewer) | High |
| [Operations Manager](#operations-manager) | High |
| [Assigned Specialist](#assigned-specialist) | Medium |
| [New Business Operations User](#new-business-operations-user) | Medium |
| [Business Leader](#business-leader) | Medium |
| [Business Analyst (Reporting)](#business-analyst-reporting) | Low |

## Group Details

<a id="plan-sponsor-administrator"></a>
### Plan Sponsor Administrator
**Description:** Submits and manages new-group and underwriting information on behalf of the sponsoring organization.

**Involved in:**
- [CM-EPIC-001: Digital Group Setup and Data Collection](change-management/cm-epic-001-digital-group-setup-and-data-collection.md) — High
- [CM-EPIC-002: Automated Underwriting Intake](change-management/cm-epic-002-automated-underwriting-intake.md) — Medium
- [CM-EPIC-003: Document Collection and E-Signature](change-management/cm-epic-003-document-collection-and-e-signature.md) — High
- [CM-EPIC-005: External Broker Collaboration](change-management/cm-epic-005-external-broker-collaboration.md) — Medium

**Change readiness:** Moves from manual forms/email/spreadsheets to a guided digital experience across nearly every epic — highest cumulative exposure in the portfolio.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="new-business-administrator"></a>
### New Business Administrator
**Description:** Internal team that keys, reconciles, and follows up on new-group submissions.

**Involved in:**
- [CM-EPIC-001: Digital Group Setup and Data Collection](change-management/cm-epic-001-digital-group-setup-and-data-collection.md) — High
- [CM-EPIC-002: Automated Underwriting Intake](change-management/cm-epic-002-automated-underwriting-intake.md) — Medium
- [CM-EPIC-004: Workflow and Case Management](change-management/cm-epic-004-workflow-and-case-management.md) — Medium

**Change readiness:** Shifts from manual data entry/chasing to exception handling and review.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="underwriter"></a>
### Underwriter
**Description:** Assesses risk and plan information for new groups.

**Involved in:**
- [CM-EPIC-002: Automated Underwriting Intake](change-management/cm-epic-002-automated-underwriting-intake.md) — High

**Change readiness:** Moves from free-form review/informal tracking to structured, validated submissions and a formal referral queue.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="broker-representative"></a>
### Broker Representative
**Description:** External partner who submits and collaborates on sponsor information.

**Involved in:**
- [CM-EPIC-003: Document Collection and E-Signature](change-management/cm-epic-003-document-collection-and-e-signature.md) — Medium
- [CM-EPIC-005: External Broker Collaboration](change-management/cm-epic-005-external-broker-collaboration.md) — High

**Change readiness:** Gains formal, role-based portal access replacing informal email/phone collaboration.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="document-reviewer"></a>
### Document Reviewer
**Description:** Internal team that reviews and classifies submitted documents.

**Involved in:**
- [CM-EPIC-003: Document Collection and E-Signature](change-management/cm-epic-003-document-collection-and-e-signature.md) — High

**Change readiness:** Moves from email/spreadsheet tracking to full version-history classification.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="operations-manager"></a>
### Operations Manager
**Description:** Manages case assignment, escalations, and portfolio-level performance.

**Involved in:**
- [CM-EPIC-004: Workflow and Case Management](change-management/cm-epic-004-workflow-and-case-management.md) — High
- [CM-EPIC-006: Operational Analytics and KPI Dashboard](change-management/cm-epic-006-operational-analytics-and-kpi-dashboard.md) — High

**Change readiness:** Shifts from reactive, manual status-chasing to proactive, dashboard-driven management.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="assigned-specialist"></a>
### Assigned Specialist
**Description:** Front-line staff who work assigned onboarding cases.

**Involved in:**
- [CM-EPIC-004: Workflow and Case Management](change-management/cm-epic-004-workflow-and-case-management.md) — Medium

**Change readiness:** Moves from informal handoffs/personal lists to a routed queue with SLA visibility.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="new-business-operations-user"></a>
### New Business Operations User
**Description:** Internal team that relays information between broker and sponsor.

**Involved in:**
- [CM-EPIC-005: External Broker Collaboration](change-management/cm-epic-005-external-broker-collaboration.md) — Medium

**Change readiness:** Shifts from manual relaying to monitoring collaboration history/notifications directly.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="business-leader"></a>
### Business Leader
**Description:** Consumes portfolio-level status and outcome reporting.

**Involved in:**
- [CM-EPIC-006: Operational Analytics and KPI Dashboard](change-management/cm-epic-006-operational-analytics-and-kpi-dashboard.md) — Medium

**Change readiness:** Moves from ad hoc, manually compiled updates to a live dashboard.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

---

<a id="business-analyst-reporting"></a>
### Business Analyst (Reporting)
**Description:** Internal team that reconciles data for reporting.

**Involved in:**
- [CM-EPIC-006: Operational Analytics and KPI Dashboard](change-management/cm-epic-006-operational-analytics-and-kpi-dashboard.md) — Low

**Change readiness:** Relies on a consistent, shared reporting source instead of manual reconciliation.

**Manager:** To confirm
**Subject Matter Expert (SME):** To confirm

**Open Questions:**
- Who is the manager representing this group?
- Who is the SME representing this group?

*Coverage note: the summary and profiles above are seeded from the six epic-level Change Management briefs and the portfolio executive summary. Feature-level (`CM-FEAT-XXX`) and story-level backlinks will be added incrementally as the [stakeholder-register-validation](.github/skills/stakeholder-register-validation/SKILL.md) guardrail runs against each new or edited artifact — treat this register as a living document, not a one-time snapshot.*
