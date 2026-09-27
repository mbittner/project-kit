---
description: "Replace an Accepted ADR with a new ADR: drafts the superseding decision, links both ADRs in both directions, marks the old ADR Superseded only after confirmation, and lists the Solution Designs that must be revisited. Never rewrites the old decision's substance."
name: "Supersede Decision"
argument-hint: "ADR number or ID to supersede, e.g. 004 or ADR-004"
agent: "agent"
tools: [read, edit, search, execute]
---
Supersede the ADR identified by `${input}` (e.g. `004` or `ADR-004`).

## Steps

1. Load [adr-documentation](../skills/adr-documentation/SKILL.md), [architecture-decision-consistency](../skills/architecture-decision-consistency/SKILL.md), [architecture-traceability-validation](../skills/architecture-traceability-validation/SKILL.md), and [system-register-validation](../skills/system-register-validation/SKILL.md) in full.
2. Resolve `architecture/decisions/adr-<nnn>-*.md`. If it is not `Accepted`, explain that only an Accepted ADR can be superseded. A Proposed ADR can simply be edited or Rejected. Then stop.
3. Ask what changed: the new evidence, constraint, or outcome that reopens the decision. If the change is only a correction (typo, link, translation), recommend editing the existing ADR instead, and stop.
4. Follow the [get-latest](get-latest.prompt.md) workflow if shared changes may exist, then confirm the next free `ADR-XXX` with `check-ids.ps1`.
5. Propose the new ADR: context (referencing the old ADR and what changed), decision, options (including keeping the old decision), rationale, consequences, and migration or transition follow-ups. List every Solution Design that names the old ADR as governing, and every business artifact it links to. Run the consistency check.
6. Ask the Solution Architect to confirm. Create nothing before confirmation.
7. After confirmation, create the new EN/FR ADR with status `Proposed` and `Supersedes` set to the old ADR. When the architect accepts the new ADR (status gate passed, Decision date recorded), set the old ADR to `Superseded` and `Superseded by` to the new ADR in both languages. Change no other content in the old ADR.
8. Update the Decision Log rows in both indexes and backlinks. Tell the user which designs now need revision; do not rewrite them without a request.
9. Run `check-ids.ps1`, `check-parity.ps1`, `check-links.ps1`, `check-checklists.ps1`, `check-adr-chain.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`, and `check-system-mentions.ps1`, then report the findings.
