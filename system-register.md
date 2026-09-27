# System Register

*[Registre des systèmes en français](system-register-fr.md)*

## Purpose and Scope

This register tracks confirmed systems referenced by project IT and architecture documentation. A system is an independently managed application, platform, or service that provides a capability, owns or exchanges data, or has its own lifecycle or accountable owner.

Do not register every vendor, programming language, library, internal component, API, or database object. Include a component only when it is independently managed as a system. Do not add examples or unconfirmed systems.

Hopex remains the authoritative source for an existing system's identity and owner when its record is provided. This register has no direct Hopex integration and does not verify Hopex automatically. A Hopex reference is optional; this register is a documentation index, not a replacement for Hopex.

## Systems

No project systems have been confirmed and registered yet.

| System ID | Canonical system name | Aliases | Type | Lifecycle status | Purpose | System owner | Hopex reference (optional) | CMCD real name / ID |
|---|---|---|---|---|---|---|---|---|

Use stable IDs in the form `SYS-001`; never reuse an ID. In architecture documents, reference a confirmed system by both its ID and canonical name. Lifecycle status must be `Planned`, `Active`, `Deprecated`, or `Retired`. Retain retired systems for traceability rather than deleting them.

## Technical References

| System ID | Technical document | Relationship or usage |
|---|---|---|

Link each registered system to the assessments, ADRs, designs, or other technical documents that reference it.

## Open Questions

Missing owner or CMCD details do not block documenting a confirmed system. Record each missing value as `To confirm` and capture the question below, assigned to the Solution Architect.

| System ID | Field | Question | Asked of | Status |
|---|---|---|---|---|

## Registering Systems

- Confirm that the item is a project system, not merely a technology, library, or design component.
- Ask the Solution Architect for the system owner and the CMCD real name/ID. Do not infer either value. If either is not provided, enter `To confirm` and add a specific open question above; continue without blocking the technical document.
- Ask for a Hopex name/ID only as an optional reference. If none is supplied, leave the field blank and do not create an open question solely for that omission.
- If the user explicitly confirms a required field does not apply, record `Not applicable (confirmed)`.
- Keep the English and French records aligned, including IDs, names, owners, Hopex references, CMCD values, lifecycle state, and technical-document links.
