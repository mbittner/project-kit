---
name: adr-documentation
description: "Use when drafting, reviewing, quality-scoring, accepting, or superseding an Architecture Decision Record (ADR-XXX) in architecture/decisions/, or when explaining what makes a good ADR — context, decision, options considered, rationale, consequences, affected designs, review trigger, decision owner, and the Proposed/Accepted/Rejected/Superseded/Deprecated lifecycle. Trigger phrases: new ADR, record a decision, architecture decision record, accept this decision, supersede ADR, deprecate a decision, is this ADR ready, what makes a good ADR."
---

# ADR Documentation

## What an ADR Is

An **Architecture Decision Record** captures **one** consequential architecture decision: its context, the decision, the options considered, the rationale, and its consequences. Create one when a decision is costly to reverse, crosses teams or systems, or departs from established architecture. Do not create ADRs for routine design details.

The Solution Architect is the decision owner and the only role who can accept an ADR in this pack.

## Where It Lives in This Repo

- Folder: `architecture/decisions/`
- Filename: `adr-XXX-slug.md` + `adr-XXX-slug-fr.md`
- Template: [templates/adr-template.md](../../../templates/adr-template.md) and [templates/adr-template-fr.md](../../../templates/adr-template-fr.md)
- Index: the Decision Log in [architecture/README.md](../../../architecture/README.md) and [architecture/README-fr.md](../../../architecture/README-fr.md)

## Workflow

1. **Confirm the single decision** and the linked business artifact. When a Recommended assessment exists, draft from it (see `/record-decision`).
2. **Find the next free `ADR-XXX` ID** with `check-ids.ps1`.
3. **Copy both templates.** New ADRs start as `Proposed`.
4. **Run [architecture-decision-consistency](../architecture-decision-consistency/SKILL.md)** against Accepted ADRs that share a system or scope.
5. **Run [system-register-validation](../system-register-validation/SKILL.md)** and [architecture-traceability-validation](../architecture-traceability-validation/SKILL.md).
6. **Score** with the Quality Scoring Model and report the gaps. The score is advisory.
7. **Update the Decision Log, the source assessment's `Resulting decision`, and backlinks.** Then run `check-parity.ps1`, `check-links.ps1`, `check-adr-chain.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`, and `check-system-mentions.ps1`.

## Mandatory Sections

Context · Decision · Options Considered · Rationale · Consequences · Affected Designs · Review Trigger · Decision Checklist. Open Questions Log is conditional.

## Guardrail 1: One Decision Per ADR

If the Decision section contains unrelated choices joined by "and", split them. Related consequences of one choice stay in the same ADR.

## Guardrail 2: Named Owner, Explicit Acceptance

- The decision owner is the Solution Architect, named in the header.
- Never set `Accepted` without the Solution Architect's explicit confirmation in the conversation. Record the Decision date (`YYYY-MM-DD`) when accepting.
- Do not infer acceptance from a score, an approved business artifact, or a Recommended assessment.

## Guardrail 3: Immutability Once Accepted

- Once Accepted, the decision's substance does not change. Corrections to typos, links, or translations are allowed.
- To change a decision, create a new ADR that supersedes it (`/supersede-decision`). The old ADR becomes `Superseded`, and both headers reference each other.
- `Deprecated` means the decision no longer applies and has no replacement. `Rejected` means it was proposed and not accepted. Keep all of them.

## Guardrail 4: Honest Consequences

At least one negative consequence or accepted tradeoff is recorded. An ADR with only benefits hides risk. Follow-ups have owners.

## Guardrail 5: Traceable and Consistent

- Links to at least one business artifact and, when one exists, the source assessment.
- Systems cited as `SYS-### — Name`.
- Does not contradict another Accepted ADR unless it explicitly supersedes it.

## For AI Generation

1. Draft from the assessment when available. Reuse its options and rationale, not new ones.
2. Use at most 5 `[NEEDS CLARIFICATION: ...]` markers, in this priority order: the decision itself > decision owner > linked business artifact > conflict with an existing ADR > review trigger. Log the rest.
3. Never invent dates, owners, or system identities.

## Quality Scoring Model

Rate each dimension 0–5, then `points = (rating / 5) × weight`.

| Dimension | Weight |
|---|---:|
| Context | 20 |
| Decision clarity (single, active, specific) | 20 |
| Options considered | 15 |
| Rationale and accepted tradeoffs | 15 |
| Consequences and follow-ups | 15 |
| Traceability, ownership, and review trigger | 15 |
| **Total** | **100** |

| Score | Rating |
|---:|---|
| 85–100 | Well-founded |
| 70–84 | Acceptable with gaps |
| 50–69 | Weak |
| Below 50 | Not ready |

**The score is advisory and never blocks acceptance.** Always list the gaps.

## Litmus Test

1. What was decided, in one sentence?
2. Why was it needed, and for which business outcome?
3. What else was considered, and why not chosen?
4. What gets worse because of this decision?
5. What would make us revisit it?
6. Who decided, and when?

## Status Gate

Statuses: **Proposed → Accepted / Rejected**, then **Accepted → Superseded / Deprecated**.

- `Accepted` requires: Decision Checklist fully checked, zero `[NEEDS CLARIFICATION]` markers, no Open Questions Log item still Open, a named decision owner, a Decision date, and the Solution Architect's explicit confirmation. Record `> **Last validated:** <date> — Score <NN>/100 (<Rating>)` as evidence.
- `Superseded` requires `Superseded by` to link the replacing ADR, whose `Supersedes` links back.
- `check-checklists.ps1` and `check-adr-chain.ps1` re-verify these rules mechanically. Keep both language copies at the same status.
