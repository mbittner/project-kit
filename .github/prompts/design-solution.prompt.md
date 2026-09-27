---
description: "Propose a proportionate Solution Design outline for a Feature — governing ADRs, systems involved, sections needing depth, and open questions — and create the EN/FR design only after confirmation. Checks consistency with Accepted ADRs and never adds business scope."
name: "Design Solution"
argument-hint: "Feature number or ID, e.g. 011 or FEAT-011"
agent: "agent"
tools: [read, edit, search, execute]
---
Propose a Solution Design for the feature identified by `${input}` (e.g. `011` or `FEAT-011`).

## Steps

1. Load [solution-design-documentation](../skills/solution-design-documentation/SKILL.md), [architecture-screening](../skills/architecture-screening/SKILL.md), [architecture-decision-consistency](../skills/architecture-decision-consistency/SKILL.md), [architecture-traceability-validation](../skills/architecture-traceability-validation/SKILL.md), and [system-register-validation](../skills/system-register-validation/SKILL.md) in full.
2. Resolve `features/feat-<nnn>-*.md`. If there is no match, list the existing feature IDs and ask which one to use.
3. Read the Feature (scope, acceptance criteria, quality and compliance considerations, dependencies), its parent Epic, its `Architecture references`, the [architecture index](../../technical/README.md), and the [System Register](../../system-register.md).
4. Screen the Feature. If screening says no design is needed, say so and ask whether to proceed anyway. If a consequential decision has no Accepted ADR, recommend recording it first (an assessment or `/record-decision`), or list it as an open question.
5. Check whether an existing design already covers this Feature. If so, recommend extending that design instead of creating a new one.
6. Present the proposal: design scope and traceability to acceptance criteria, governing ADRs (with consistency findings), systems (existing `SYS-###` or candidates needing owner/CMCD details), which sections need depth and which are likely "Not applicable", and open questions. Flag any business-scope gap for the Product Owner.
7. Ask the user to confirm or adjust the proposal. Create nothing before confirmation.
8. After confirmation, follow [get-latest](get-latest.prompt.md) if needed, confirm the next free `SD-XXX` with `check-ids.ps1`, and create the EN/FR pair from the templates with status `Draft` and version `Not baselined`, following the skill's full workflow. Update the index, the governing ADRs' Affected Designs, business-artifact backlinks, and the System Register.
9. Score the draft (advisory). Run `check-ids.ps1`, `check-parity.ps1`, `check-links.ps1`, `check-document-headers.ps1`, `check-arch-traceability.ps1`, and `check-system-refs.ps1`, then `generate-documentation-register.ps1`, and report the results.
