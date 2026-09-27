---
name: architecture-decision-consistency
description: "Use when a new or changed ADR or Solution Design must be checked against existing Accepted ADRs for conflicts, silent reversals, or duplicate decisions covering the same systems or scope. Shared by adr-documentation, solution-design-documentation, /record-decision, /supersede-decision, /design-solution, and /validate. Trigger phrases: does this conflict with an ADR, contradicting decision, duplicate ADR, decision consistency, is this already decided."
---

# Architecture Decision Consistency

The architecture counterpart of [sibling-overlap-validation](../sibling-overlap-validation/SKILL.md). It keeps the decision log coherent: one live decision per question, and no design that quietly ignores an Accepted ADR.

## Procedure

1. **Collect the comparison set.** From the Decision Log in [architecture/README.md](../../../architecture/README.md), take every ADR with status `Accepted` (and `Proposed` ones, flagged as pending) that shares at least one of the following with the target: a `SYS-###` system, a linked business artifact, or the same decision topic.
2. **Compare decision statements.** For each pair, classify it as:
   - **Independent:** different questions. No action.
   - **Duplicate:** the same question already decided the same way. Recommend reusing the existing ADR instead of creating a new one.
   - **Conflict:** the target decides differently, or a design does something an Accepted ADR rules out. Resolution: supersede the existing ADR via `/supersede-decision`, change the target, or record an explicit, owner-approved exception in the design's Open Questions Log.
   - **Refinement:** the target narrows an existing decision without contradicting it. Reference the existing ADR in Context.
3. **For designs,** also confirm that every governing ADR listed in the header is `Accepted`, and that no `Superseded` or `Deprecated` ADR is still listed as governing.
4. **Report** each non-independent pair: ADR IDs, the conflicting statements, the classification, and the suggested resolution.

## Boundaries

- Do not resolve conflicts silently. Never edit an Accepted ADR's substance to remove a conflict.
- Do not decide which ADR wins. Present the options to the Solution Architect.
- This check uses judgment. `check-adr-chain.ps1` only verifies the mechanical supersession links.
