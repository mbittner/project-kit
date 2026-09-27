---
description: "Draft a Proposed ADR (EN/FR) from a Recommended Architecture Assessment, after checking consistency with existing Accepted ADRs. Presents the draft decision for confirmation before creating files; never marks the ADR Accepted without the Solution Architect's explicit confirmation."
name: "Record Decision"
argument-hint: "Assessment number or ID, e.g. 002 or ARCH-002"
agent: "agent"
tools: [read, edit, search, execute]
---
Record an architecture decision from the assessment identified by `${input}` (e.g. `002` or `ARCH-002`).

## Steps

1. Load [adr-documentation](../skills/adr-documentation/SKILL.md), [architecture-assessment-documentation](../skills/architecture-assessment-documentation/SKILL.md), [architecture-decision-consistency](../skills/architecture-decision-consistency/SKILL.md), [architecture-traceability-validation](../skills/architecture-traceability-validation/SKILL.md), and [system-register-validation](../skills/system-register-validation/SKILL.md) in full.
2. Resolve `technical/assessments/arch-<nnn>-*.md`. If there is no match, list the existing assessment IDs and ask. If the assessment is not `Recommended`, say so and ask whether to proceed anyway. Do not change its status.
3. Follow the [get-latest](get-latest.prompt.md) workflow if shared changes may exist, then confirm the next free `ADR-XXX` with `check-ids.ps1`.
4. Propose the ADR content: decision statement, context summary, options (from the assessment), rationale, consequences including negative ones, related systems, review trigger, and decision owner. Run the decision-consistency check against Accepted ADRs and show any conflicts or duplicates. If an Accepted ADR already covers the question, recommend reusing or superseding it instead.
5. Ask the Solution Architect to confirm or edit the proposed decision. Create nothing before confirmation.
6. After confirmation, create the EN/FR ADR pair from the templates with status `Proposed`. Update the assessment's `Resulting decision` (set its status to `Closed` only if the user confirms), the Decision Log in both `technical/README.md` files, business-artifact backlinks, and the System Register references.
7. Ask whether the Solution Architect wants to accept the decision now. If yes, run the ADR status gate (`/validate adr <id>` steps). Set `Accepted` and the Decision date only if the gate passes and the architect confirms.
8. Run `check-ids.ps1`, `check-parity.ps1`, `check-links.ps1`, `check-checklists.ps1`, `check-adr-chain.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`, and `check-system-mentions.ps1`, then report the findings.
