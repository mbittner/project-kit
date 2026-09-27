# IDEA-003 — Governed Non-Functional Requirements Component

*[Ideas Register index](README.md)*

## High-Level Description

Add a governed NFR component to the Project Documentation Pack: a bilingual, source-linked catalog of applicable non-functional requirements with project or solution profiles for applicability, target, source, owner, and verification evidence. Integrate it with Feature and Solution Design workflows without copying the external NFR catalog into every artifact.

## Status

Proposed on 2026-09-27. The detailed proposition remains to be reviewed before implementation.

## Detailed Proposition

### Recommendation

Add a governed Non-Functional Requirements (NFR) component as a reusable catalog and traceability layer. Do not create 39 copied documents or repeat the full external catalog in every Feature and Solution Design.

The organizational SharePoint catalog is version 4.0 and contains 39 NFRs covering AI governance; data compliance and lifecycle; accessibility, usability, mobility, and French-language support; automation and architecture; performance; reliability and continuity; and security. Its source identifiers, such as `SS-PERF-1`, `SS-SECU-1`, and `IT-USAB-1`, should remain the canonical identifiers.

### Proposed Structure

```text
architecture/
	nfrs/
		README.md
		README-fr.md
		nfr-register.md
		nfr-register-fr.md
		profiles/
			<project-or-solution-profile>.md
			<project-or-solution-profile>-fr.md
```

The register should preserve the source catalog's definitions and version. Profiles should capture how each NFR applies to a project or solution.

### NFR Data Model

Each catalog entry or profile row should support:

| Field | Purpose |
|---|---|
| Source ID | Stable identifier from the organizational NFR catalog |
| English and French names | Bilingual reference |
| Category | Security, performance, data, usability, reliability, or other category |
| Requirement summary | Pack-readable description |
| Source and version | External source and catalog version |
| Applicability | Applicable, Not applicable, or To confirm |
| Target | Measurable project or solution target |
| Owner | Accountable role or team |
| Verification method | Test, inspection, monitoring, audit, or other evidence |
| Related artifacts | Feature, Solution Design, ADR, system, or policy references |
| Status | Draft, In Review, Approved, or Retired |

### Integration With Existing Artifacts

#### Features

Replace the current free-form quality list with references to applicable NFRs. A Feature should identify the relevant source ID, applicability, target, verification method, and owner without duplicating the organizational definition.

#### Solution Designs

Extend the existing NFR table in `templates/solution-design-template.md` and its French counterpart with source NFR ID, applicability rationale, target, verification method, owner, and verification evidence or result. Keep the current mandatory NFR section as the delivery-level expression of the requirement.

#### User Stories

Carry forward applicable NFR references from the parent Feature. A story may add a verification detail but must not redefine the NFR.

#### Architecture Workflow

Architecture screening should flag material NFRs involving availability, resilience, performance, scalability, security, privacy, data residency, retention, accessibility, regulatory obligations, or operational constraints. Use an ADR when satisfying an NFR requires a consequential architecture decision.

### Proposed Pack Capabilities

Implementation should add:

- `nfr-documentation` guidance for drafting and reviewing NFR profiles.
- An explicit NFR or NFR-profile validation path in `/validate`.
- Applicability and verification checklists.
- A check for valid source IDs, duplicate references, missing applicability decisions, missing targets, missing verification methods, broken links, and bilingual parity.
- A check or report for retired or superseded source NFRs.
- An NFR coverage report across Features and Solution Designs.
- Optional guidance to identify likely NFRs for a Feature.

The provider-neutral capability contract should not change initially. This is artifact-specific behavior and belongs in NFR guidance, templates, and validation.

### Governance Rules

- `Applicable` requires a target, owner, and verification method.
- `Not applicable` requires a reason.
- `To confirm` requires an open question and accountable owner.
- Targets must never be invented; use `To confirm` when evidence is unavailable.
- Organizational NFR definitions must not be silently rewritten.
- A source catalog version change should trigger review of affected profiles.
- Approved Solution Designs should retain the NFR baseline used for approval.
- Changes that affect business scope remain subject to the existing Feature and architecture workflows.

### Options Considered

1. Add only another free-form section: minimal effort, but no reuse, consistency, or coverage reporting.
2. Create one Markdown document per NFR: highly traceable, but excessive for 39 entries and costly to maintain bilingually.
3. Copy the SharePoint catalog into the repository: useful for offline access, but creates source synchronization and ownership problems.
4. Recommended: maintain a source-linked register plus project or solution profiles.

### Phased Implementation

1. Define the NFR data model, source-ID policy, bilingual terminology, lifecycle, and ownership rules.
2. Add the register and profile templates in English and French.
3. Update Feature and Solution Design templates and their practice guidance.
4. Add validation and coverage checks.
5. Update `/validate`, architecture screening, and the business and architecture user guides.
6. Add README and index references and run bilingual integrity checks.
7. Pilot the component against one Feature and one Solution Design before broad adoption.

### Acceptance Criteria For Implementation

- Every profile references a valid source NFR ID and catalog version.
- English and French register/profile structures remain in parity.
- Every applicable NFR has a target, owner, and verification method.
- Every excluded NFR has a documented rationale.
- Features and Solution Designs can reference NFRs without duplicating their definitions.
- Validation identifies missing, invalid, duplicated, retired, or unverified NFR references.
- Existing business, architecture, save/share, and baseline workflows continue to work unchanged.
- A pilot demonstrates traceability from an NFR to a Feature, Solution Design, and verification evidence.