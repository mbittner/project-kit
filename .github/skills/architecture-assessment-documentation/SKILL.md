---
name: architecture-assessment-documentation
description: "Use when drafting, reviewing, or quality-scoring an Architecture Assessment (ARCH-XXX) in technical/assessments/, or when explaining what makes a good architecture assessment — framing the decision question, business context, constraints and assumptions, evidence gaps, options including doing nothing, evaluation criteria, tradeoff analysis, risks, and recommendation, or assessing whether an assessment is ready to support a decision. Trigger phrases: new architecture assessment, compare options, options analysis, tradeoff analysis, build vs buy, which option should we choose, is this assessment ready, what makes a good architecture assessment."
---

# Architecture Assessment Documentation

## What an Architecture Assessment Is

An **Architecture Assessment** compares feasible options for **one** decision question that carries material architecture uncertainty or cross-cutting risk, and produces a recommendation. It feeds an [ADR](../adr-documentation/SKILL.md); it is not the decision itself.

```text
Business artifact (Epic/Feature) → Assessment (options, recommendation) → ADR (decision) → Solution Design (how)
```

Create one only when [architecture-screening](../architecture-screening/SKILL.md) indicates it is warranted. A decision with one obvious option following established patterns goes straight to an ADR, or needs no document at all.

## Where It Lives in This Repo

- Folder: `technical/assessments/`
- Filename: `arch-XXX-slug.md` + `arch-XXX-slug-fr.md`
- Template: [templates/arch-assessment-template.md](../../../templates/arch-assessment-template.md) and [templates/arch-assessment-template-fr.md](../../../templates/arch-assessment-template-fr.md)
- Index: add a row to [technical/README.md](../../../technical/README.md) and [technical/README-fr.md](../../../technical/README-fr.md)
- Not listed in the business tables of contents.

## Workflow

1. **Confirm the decision question and linked business artifact.** An assessment with no linked Initiative, Epic, or Feature is not ready to draft. If the question is really several decisions, propose splitting it.
2. **Find the next free `ARCH-XXX` ID** with `check-ids.ps1` from [pack-integrity-check](../pack-integrity-check/SKILL.md).
3. **Copy both templates** and keep section names and order.
4. **Draft sections 1–4 before options** so the context and constraints shape the options, not the reverse.
5. **Apply the AI generation rules** below. Never invent costs, volumes, SLAs, owners, or dates.
6. **Run the guardrails**, [system-register-validation](../system-register-validation/SKILL.md) for every system named, and [architecture-traceability-validation](../architecture-traceability-validation/SKILL.md) for links in both directions.
7. **Score the draft** with the Quality Scoring Model and report the gaps. The score is advisory.
8. **Update the index and backlinks**, then run `check-parity.ps1`, `check-links.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`, and `check-system-mentions.ps1`.

## Mandatory Sections

| # | Section | Purpose |
|---|---|---|
| 1 | Decision Question and Why Now | One question; the cost of deferring |
| 2 | Business Context and Outcomes | Outcomes the decision must serve, linked not copied |
| 3 | Constraints, Standards, and Assumptions | What limits the option space, with source and confirmation status |
| 4 | Evidence Gaps | Unknowns that affect the decision — "None identified" is fine, silence is not |
| 5 | Options Considered | At least two genuine options |
| 6 | Evaluation Criteria | Traced to outcomes, constraints, or quality attributes |
| 7 | Tradeoff Analysis | Standard dimensions for every option |
| 8 | Risks and Dependencies | With response or owner |
| 9 | Recommendation and Rationale | Recommended option, accepted tradeoffs, conditions that would change it |
| 11 | Readiness Checklist | Embedded checklist |

Section 10, Open Questions Log, is conditional.

## Guardrail 1: No Foregone Conclusion

- At least two genuine options. A straw-man alternative written only to be rejected is a violation.
- Consider doing nothing and non-technology options (process, policy, reuse, configuration) whenever they could plausibly meet the need. If they are excluded, say why.
- Criteria are defined before the tradeoff analysis and are not tailored to favor one option.

## Guardrail 2: Recommendation Is Not a Decision

- Section 9 recommends; the decision is recorded in an ADR by the Solution Architect.
- Never write "we have decided" in an assessment. Status `Recommended` means ready to decide, not decided.
- Once the ADR exists, set status to `Closed` and link it in `Resulting decision`.

## Guardrail 3: Grounded in Business Outcomes

- Every criterion traces to a business outcome, constraint, or quality attribute from the linked artifact or an approved standard.
- Business fit is always a tradeoff dimension.
- If the assessment reveals that the business scope is unclear or should change, raise it with the Product Owner. Do not change business scope here.

## Guardrail 4: No Invented Facts

- Costs, volumes, SLAs, licensing terms, vendor capabilities, owners, and dates are "To confirm" unless a source is given.
- List what is missing in Evidence Gaps and assign it in the Open Questions Log.
- Cite systems as `SYS-### — Name`. Do not guess system identity or ownership.

## Guardrail 5: Proportionality

- Investigation depth matches uncertainty, impact, and reversibility. A reversible, low-impact decision needs a short assessment.
- Do not design the solution here: keep component-level detail for the Solution Design.

## For AI Generation (Drafting From a Short Prompt)

1. Derive context from the linked business artifacts and the System Register. Do not import requirements from another project.
2. Record every assumption in section 3 with status `To confirm`.
3. Use at most 5 `[NEEDS CLARIFICATION: ...]` markers, in this priority order: decision question > linked business artifact > decision owner > a constraint that eliminates options > evidence needed to compare options. Log everything else in the Open Questions Log.
4. Propose options, but label vendor-specific options generically unless the user named the vendor.
5. Before finishing, run the Litmus Test.

## Quality Scoring Model

Score out of 100. Rate each dimension 0–5 (0 = Missing … 5 = Excellent), then `points = (rating / 5) × weight`.

| Dimension | Weight |
|---|---:|
| Decision question and business traceability | 15 |
| Constraints, assumptions, and evidence gaps | 15 |
| Option breadth and genuineness | 15 |
| Evaluation criteria and tradeoff analysis | 20 |
| Risks, dependencies, and reversibility | 10 |
| Recommendation and rationale | 15 |
| Ownership and open questions | 10 |
| **Total** | **100** |

| Score | Rating | Meaning |
|---:|---|---|
| 85–100 | Decision-ready | The Solution Architect can decide with confidence |
| 70–84 | Nearly ready | Minor gaps; decide once they are addressed or consciously accepted |
| 50–69 | Needs work | Material gaps in options, criteria, or evidence |
| Below 50 | Not ready | Reframe the question or gather evidence first |

**The score is advisory and never blocks a status change.** Always list the specific gaps per dimension.

## Litmus Test

A reviewer should be able to answer these from the document in about two minutes:

1. What single question is being decided, and why now?
2. Which business outcome does it serve?
3. What constraints limit the options?
4. What options were considered, including doing nothing?
5. How were they compared, and what are the key tradeoffs?
6. What is recommended, and what would change the recommendation?
7. Who decides?

## Status Gate

Statuses: **Draft → In Review → Recommended → Closed**.

- `Recommended` requires: Readiness Checklist fully checked, zero `[NEEDS CLARIFICATION]` markers, and no Open Questions Log item still Open. Record `> **Last validated:** <date> — Score <NN>/100 (<Rating>)` as evidence. The score does not gate the status.
- `Closed` requires a link to the resulting ADR in the header.
- Never change status on request alone. Run `/validate assessment <id>` first. `check-checklists.ps1` re-verifies the gate mechanically.
- Keep both language copies at the same status.
