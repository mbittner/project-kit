---
name: system-register-validation
description: "Use whenever technical or architecture documentation is created, updated, or reviewed, and on every /save-my-work or /share-my-work invocation to scan affected technical documentation for system references and reconcile the bilingual System Register. Trigger phrases: system register, new system, system owner, Hopex reference, CMCD name or ID, system inventory, architecture dependency."
---

# System Register Validation

Reconcile systems named by the technical-documentation change set with the bilingual [System Register](../../../system-register.md) and [French register](../../../system-register-fr.md). Follow this procedure on every save/share invocation. When no technical documents changed, report that no technical system references required reconciliation; do not invent a change.

## Candidate System Scope

Treat an application, independently managed platform, or service as a candidate when it provides a capability, owns or exchanges data, or has its own lifecycle or accountable owner. Do not register every vendor, programming language, library, internal component, API, or database object. A component qualifies only if it is independently managed as a system.

When reconciling documents, distinguish project systems from tools used only to maintain this documentation pack. Do not add a system based on an ambiguous name alone; ask the Solution Architect to confirm whether it belongs in the project inventory.

## Reconciliation Procedure

1. Scan the complete set of changed or newly received architecture documents for system names, aliases, existing `SYS-###` references, and changed system relationships. On save/share, run this scan even when no technical file appears changed; in that case report that no technical changes need reconciliation.
2. Compare each confirmed candidate with both register language copies by ID, canonical name, and aliases. Reuse an existing ID for an existing system. Do not create duplicate records or reuse retired IDs.
3. For a newly confirmed system or a materially changed entry, ask the Solution Architect for the system owner and the CMCD real name/ID. Ask for the Hopex system name/ID as an optional reference; clearly state that Hopex is not required.
4. If owner or CMCD information is not provided, record `To confirm` / `À confirmer` in the corresponding register field and add a specific open question in both registers, assigned to the Solution Architect. Do not block saving or sharing the technical document. If Hopex is not provided, leave that optional field blank without an open question.
5. Do not infer ownership, Hopex identity, CMCD name/ID, or lifecycle status from a name or an unverified external source. Hopex is not queried automatically. If the user confirms a field does not apply, record `Not applicable (confirmed)` / `Sans objet (confirmé)`.
6. For a confirmed new system, assign the next unused `SYS-###` ID after checking both registers. Add the same ID and factual system data in English and French. Add the relevant architecture-document links to the Technical References table and cite the system in documents as `<SYS-ID> — <canonical system name>`.
7. When status or system relationships change, update the register rather than removing the record. Preserve retired systems for traceability.
8. Before finishing, report systems reconciled and outstanding owner/CMCD questions. Do not claim a Hopex lookup, technical validation, or owner confirmation that did not occur.

## Mechanical Checks

- `check-system-refs.ps1` verifies that every cited `SYS-NNN` ID exists in both registers and that each citing architecture document has a Technical References row.
- `check-system-mentions.ps1` is an advisory warning, like the stakeholder check. It flags systems named without an ID in the `Related systems` header and in a design's Interfaces table: a registered name or alias should be cited with its ID, and an unknown name is a possible unregistered system. For each warning, cite the ID, register the system after the Solution Architect confirms it, or confirm that it is not an independently managed system. Never register a system based on the warning alone.

## Boundaries

- The register is a technical documentation index, not a CMDB or a replacement for Hopex.
- Hopex is authoritative for identity/owner data when a Hopex record is supplied, but the reference itself is optional.
- Missing owner or CMCD information does not block saving or sharing; keep it visible as `To confirm` and an open question.
- The root-level System Register is included in the root table of contents under Registers for discoverability. Other technical systems and documents remain outside the business requirements tables of contents; keep business outcomes and scope in Initiative/Epic/Feature artifacts and link to technical documentation where relevant.
