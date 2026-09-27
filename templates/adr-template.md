# ADR-XXX | <Decision Title>

*[Lire ce document en français](adr-template-fr.md)*

> **Decision status:** Proposed  
> **Decision date:** Not decided  
> **Last validated:** Not recorded  
> **Decision owner:** <Solution Architect name, to confirm>  
> **Source assessment:** [ARCH-XXX <Assessment Title>](../assessments/arch-XXX-slug.md), or Not applicable (<reason>)  
> **Linked business artifacts:** [FEAT-XXX <Feature Name>](../../features/feat-XXX-slug.md)  
> **Related systems:** <SYS-### — Canonical system name>, or None identified  
> **Supersedes:** None  
> **Superseded by:** None  
> **Important:** This is a template. Populate every bracketed placeholder and remove guidance text before publishing.  
> **Status gate:** Valid values are Proposed, Accepted, Rejected, Superseded, Deprecated. Only the Solution Architect can accept a decision, and only after `/validate adr <id>` confirms the checklist is complete, no `[NEEDS CLARIFICATION]` markers remain, and no Open Questions Log item is still Open. Record the Decision date when accepting. Once Accepted, do not change the decision's substance: supersede it with a new ADR. The score is advisory and never blocks the status.

## 1. Context
*(Mandatory)* The forces at play: business outcome, constraints, quality attributes, and the problem that requires a decision. Link to the business artifacts and assessment rather than copying them.

## 2. Decision
*(Mandatory)* One decision, stated in active voice: "We will ...". Name systems as `SYS-### — Name`.

## 3. Options Considered
*(Mandatory)*

| Option | Summary | Why chosen or not chosen |
|---|---|---|
| *(chosen option)* | *(summary)* | Chosen — *(reason)* |
| *(alternative)* | *(summary)* | *(reason)* |

## 4. Rationale
*(Mandatory)* Why this option best meets the outcomes and constraints, including the tradeoffs knowingly accepted.

## 5. Consequences
*(Mandatory — include negative consequences.)*

| Type | Consequence | Follow-up or owner |
|---|---|---|
| Positive | *(consequence)* | |
| Negative | *(consequence)* | *(mitigation or owner)* |
| Follow-up | *(required work, e.g. design, migration, new standard)* | *(owner)* |

## 6. Affected Designs
*(Mandatory — "None yet" is acceptable)* Solution Designs governed by this decision: [SD-XXX <Solution Name>](../designs/sd-XXX-slug.md).

## 7. Review Trigger
*(Mandatory)* The evidence or event that would reopen this decision (e.g. volume above a threshold, vendor end-of-support, a regulatory change).

## 8. Open Questions Log
*(Conditional — keep the table only when questions remain.)*

| Question | Why It Matters | Decision Needed By | Suggested Owner | Status |
|---|---|---|---|---|
| *(question)* | *(impact)* | *(date, to confirm)* | *(role)* | Open / Resolved |

## 9. Decision Checklist
- [ ] One decision only, stated clearly
- [ ] Context links to at least one business artifact and, where applicable, the source assessment
- [ ] At least one alternative recorded with the reason it was not chosen
- [ ] Rationale explains the tradeoffs accepted
- [ ] Negative consequences and follow-ups recorded with owners
- [ ] Related systems cited as `SYS-### — Name` and reconciled with the System Register
- [ ] No conflict with other Accepted ADRs, or the conflict is resolved by superseding
- [ ] Review trigger defined
- [ ] Decision owner named and decision date recorded when Accepted
