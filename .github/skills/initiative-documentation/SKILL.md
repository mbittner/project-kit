---
name: initiative-documentation
description: "Use when drafting, reviewing, or quality-scoring a portfolio-level Initiative document in this repo's initiative/ folder, or when explaining what makes a good Initiative — creating a new INIT-XXX, writing the executive summary, business problem/opportunity, strategic alignment, desired outcomes, success metrics, scope, assumptions, risks, or ownership sections, assessing whether an initiative is ready for governance/investment approval, or answering conceptual questions about initiative quality. Trigger phrases: new initiative, initiative canvas, business case, investment readiness, initiative quality score, is this initiative ready, what's a good initiative, what makes a good initiative, how do I write a good initiative."
---

# Initiative Documentation

## What an Initiative Is

An **Initiative** is a strategic investment intended to achieve a measurable business outcome. It answers *"Why should the organization invest in this?"*

Focus on: business problems, business opportunities, desired outcomes, strategic alignment, success measurement.

Do **not** focus on: detailed requirements, user stories, technical design, UI specifications — those belong to epics, features, and stories.

```text
Vision → Strategy → Initiative → Epic → Feature → User Story → Task
```

## Guardrail 1: No Solutions in Initiative Documentation

An initiative must never describe *how* the problem will be solved — only *why* it matters and *what* outcome is expected. This is a hard constraint, not a style preference: treat any of the following as a violation to rewrite before the document is considered done.

**Flag and rewrite on sight:**
- Product, vendor, or platform names (e.g., a named SaaS tool or system) unless quoted as a rejected/illustrative bad example.
- Technology or architecture choices (APIs, databases, cloud services, integration patterns, "portal", "app", "dashboard" as a noun describing the build).
- Feature- or screen-level language (buttons, forms, workflows, notifications, specific UI/UX behavior).
- Any sentence that answers "how" instead of "why"/"what" — e.g., "Build a self-service intake form" is a solution; "Enable self-service intake for plan sponsors" is an outcome.

**How to fix a violation:** rewrite the sentence one level up in abstraction (name the outcome/capability, not the implementation), and if the solution detail is genuinely important context, move it to a linked epic/feature canvas instead of the initiative — never leave it in Executive Summary, Business Problem/Opportunity, Desired Outcomes, or Scope.

**Where this still applies even though it looks tempting to add solution detail:**
- Scope (In Scope / Out of Scope) — describe capabilities and business domains, not the system used to deliver them.
- Optional *Architecture Considerations* section — high-level constraints/impacts only, never a design.
- Epic Portfolio table — the "Purpose" column describes the epic's business purpose, not its solution.

Run this guardrail check as a final pass on every initiative draft or review, in addition to the Do's/Don'ts and quality scoring below.

## Guardrail 2: No Fabricated Content

Never state a business fact as settled when it hasn't been confirmed. Treat any of the following as a violation to rewrite:

- **Invented baselines/targets/dates:** a Success Metrics row with a specific current-state number or target that wasn't supplied by the user or an existing source document — replace with "Baseline to be confirmed" / "Target to be approved by leadership".
- **Invented cost/ROI figures:** a business-case number (savings, revenue, cost) presented as fact rather than an estimate awaiting approval.
- **Premature decisions:** legal, pricing, final architecture, security, or compliance conclusions stated as decided rather than flagged as an open item for the accountable owner.
- **Vague, unmeasurable outcomes:** "improve efficiency", "enhance experience", "drive innovation" used as if they were a Desired Outcome or Success Metric on their own — either attach a measurable KPI or remove the phrase.
- **"Go-live" as success:** any success criterion that is actually a delivery milestone ("portal launched", "system deployed") rather than a measured business result.

**How to fix:** replace with "To confirm" / "To approve" language, add a `[NEEDS CLARIFICATION]` marker if it meets the priority bar (see AI Generation rules below), or rewrite the sentence to state a measurable outcome instead of an activity or milestone.

## Guardrail 3: Structural Consistency

Before finalizing, cross-check the document against itself:

- **Scope contradictions:** the same item listed in both In Scope and Out of Scope.
- **Epic Portfolio drift:** an epic's stated purpose falls outside the initiative's In Scope list, or a listed In Scope capability has no corresponding epic once epics exist.
- **Orphaned outcomes:** a Desired Outcome with no corresponding row in Success Metrics.
- **KPIs without an owner:** every Success Metrics/KPI row should be traceable to an owner named in Ownership or Stakeholders — flag any that aren't.
- **Unregistered stakeholders:** every named stakeholder/role in Ownership or Stakeholders must be checked against [stakeholder-register.md](../../../stakeholder-register.md) per [stakeholder-register-validation](../stakeholder-register-validation/SKILL.md) — register them (or log the gap) rather than leaving them defined only in this document.
- **Risks missing Impact or Response:** every Risks table row needs both fields populated — a risk with no response is not yet analyzed.

## Guardrail 4: Repository Mechanics

- **ID integrity:** never reuse, skip, or silently renumber an `INIT-XXX` ID without explicit user confirmation — this breaks external references. Run [pack-integrity-check](../pack-integrity-check/SKILL.md)'s `check-ids.ps1` to confirm the ID you're about to assign is actually free before creating the file.
- **EN/FR parity:** the French counterpart must be created/updated in the same pass, with equivalent section count, headings, and meaning (not a machine-literal translation) — never ship an English-only or stale-French initiative. Run `check-parity.ps1` after creating/editing the pair to confirm heading counts match.
- **Clarification budget:** never exceed 5 `[NEEDS CLARIFICATION]` markers in a single document (see AI Generation rules below) — if a draft has more open items, log the lowest-priority ones in the Open Questions Log instead (or as a documented assumption if you're confident enough to proceed on a default).

## Where It Lives in This Repo

- Folder: `initiative/`
- Filename: `init-XXX-slug.md` (+ `init-XXX-slug-fr.md`)
- Template to copy from: [templates/initiative-template.md](../../../templates/initiative-template.md) and [templates/initiative-template-fr.md](../../../templates/initiative-template-fr.md)
- Fully worked example: [initiative/init-001-modernize-new-business-onboarding.md](../../../initiative/init-001-modernize-new-business-onboarding.md) (note: this example predates some of the sections below — treat the template, not the example, as authoritative for section structure on new documents)

Follow the repository-wide conventions from the agent instructions: zero-padded sequential IDs (check existing files and [table-of-content.md](../../../table-of-content.md) for the next free number), kebab-case filenames, mandatory EN/FR pair created together, the standard header blockquote status block, and cross-linking updates in [table-of-content.md](../../../table-of-content.md)/[table-of-content-fr.md](../../../table-of-content-fr.md) after creation.

## Workflow

1. **Clarify scope of the ask.** New initiative vs. reviewing/scoring an existing one vs. updating one section.
2. **Find the next free `INIT-XXX` ID** from `initiative/` and the README index.
3. **Copy the template** (both EN and FR) — do not invent new section names or skip mandatory sections.
4. **Draft mandatory sections first** (see below), then recommended, then optional sections only if the initiative is large/complex enough to warrant them.
5. **When working from a short prompt, apply the AI Generation rules below** — use reasonable defaults for structural/process gaps, document every assumption in Section 7, and cap true unknowns at 5 `[NEEDS CLARIFICATION]` markers (log any overflow in the Open Questions Log). Never invent hard numbers, names, or dates — those get "To confirm" / "To approve" (or a marker), never a fabricated value.
6. **Run all four Guardrail checks** (above) as a final pass — solutions language, fabricated content, structural consistency, and repository mechanics — and rewrite anything found.
7. **Run the quality scoring model** (below) against the draft and report the score/rating back to the user before calling it done.
8. **Update cross-links:** add the initiative to [table-of-content.md](../../../table-of-content.md)/[table-of-content-fr.md](../../../table-of-content-fr.md), and link any child epics once they exist.

## Mandatory Sections

Must be completed before an initiative can be approved for governance review.

| # | Section | Purpose |
|---|---------|---------|
| 1 | Executive Summary | What it is, why it matters, expected outcomes — concise |
| 2 | Business Problem / Opportunity | Current state, pain points, business impact, evidence |
| 3 | Strategic Alignment | Which strategic objectives this supports, and how strongly |
| 4 | Desired Outcomes | Business results expected — outcomes, not outputs (avoid "build a portal") |
| 5 | Success Metrics | KPI table with current state and target state |
| 6 | Scope | In-scope and out-of-scope boundaries |
| 7 | Assumptions | Implicit assumptions made visible |
| 8 | Risks | Key risks and impact |
| 9 | Ownership | Executive Sponsor, Business Owner, Product Manager — no initiative is approved without named accountability |

This repo's template also carries forward repo-specific mandatory sections used across all initiatives here: **Epic Portfolio** (links to child epics), **Governance and Decision Gates**, **Key Dependencies and Constraints**, **Traceability Model**, and **Approval Checklist** — keep these even though they aren't in the generic standard above.

**Conditional section — Open Questions Log:** only needed when there are unresolved items beyond the 5 capped `[NEEDS CLARIFICATION]` markers (see AI Generation and Guardrail 4 below). Omit it entirely if there's nothing to log.

## Recommended Sections

Not mandatory during ideation, strongly recommended before funding approval: Current State Assessment, Future State Vision, Business Case, High-Level Roadmap, Linked Epics (superseded here by Epic Portfolio).

## Optional Sections

Add only for larger/complex initiatives: Financial Analysis (ROI/NPV/payback), Dependency Map, Architecture Considerations (high-level only — no solution design), Security & Privacy Considerations, Change Management Plan (or link to the corresponding [change-management/](../../../change-management/) brief once epics exist), Data & Reporting Strategy, Responsible AI Assessment (only if AI capabilities are involved).

## For AI Generation (Drafting From a Short Prompt)

When asked to generate an initiative from a brief prompt rather than a fully detailed brief:

1. **Make informed guesses.** Use the prompt's context, this pack's existing artifacts (e.g., [init-001](../../../initiative/init-001-modernize-new-business-onboarding.md)), and standard group-insurance/industry patterns to fill structural gaps — don't stall on every unknown.
2. **Document assumptions.** Every guess must be written into the Assumptions section (Section 7), not silently folded into another section. If unsure whether something is a guess, put it there.
3. **Limit clarifications to a maximum of 5.** Use an inline `[NEEDS CLARIFICATION: <question>]` marker — not a silent "To confirm" — only for decisions that are both (a) impossible to reasonably default and (b) material enough to change the shape of the initiative depending on the answer. Never exceed 5 markers per document; log any additional lower-priority unknown as an Open Questions Log entry instead (or as a documented assumption if you're confident enough to proceed on a default).
4. **Prioritize which unknowns earn a marker**, in this order: **stakeholder identification** (is the Executive Sponsor/Business Owner named and registered?) > **scope boundary** (what's in/out) > **risk, compliance, or regulatory exposure** > **business value / success metric definition** > **governance or operational detail**. Only the top 1–5 unresolved items by this order get a marker; everything else becomes an Open Questions Log entry (Question | Why It Matters | Decision Needed By | Suggested Owner | Status) or a documented assumption/"To confirm" value.
5. **Think like a governance reviewer, not a drafter.** Before finishing, run every sentence in Desired Outcomes, Success Metrics, and Scope against the Executive Litmus Test below — if a VP couldn't act on it as written, it's too vague and needs sharpening or a marker, not filler language.
6. **Common areas needing clarification** (raise only if no reasonable default fits): the identity of the Executive Sponsor/Business Owner, a hard budget or funding ceiling, a regulatory/compliance trigger that changes scope, or the strategic objective the initiative serves when none is stated in the prompt.

### Examples of Reasonable Defaults (don't ask about these)

- **KPI baselines/targets not yet measured:** state as "Baseline to be confirmed" / "Target to be approved by leadership" (existing pack convention) instead of blocking on a marker.
- **Governance cadence:** reuse this pack's standard six decision gates (Section 11) unless the prompt implies a different governance model.
- **Stakeholder roles:** default to the standard role set already used across this pack's initiatives (Executive Sponsor, Business Owner, Product Manager, Product Owner, Business Analyst, etc.).
- **Risk categories:** default to the illustrative risk set used in [init-001](../../../initiative/init-001-modernize-new-business-onboarding.md) (adoption, data quality, decision ownership, fragmented delivery, unmeasured value) as a starting checklist, tailored to the specific initiative.
- **Traceability model:** reuse the standard chain in Section 13 verbatim unless the prompt describes a materially different delivery model.
- **Scope exclusions:** default to excluding claims, renewals/in-force changes, and final legal/pricing/security decisions unless the prompt says otherwise — these are standing out-of-scope items across this pack.

## Do's

- Focus on business problems and outcomes, not solutions.
- Quantify business value wherever possible (e.g., "reduce cost by 20%", not "improve efficiency").
- Define measurable success metrics with both baseline and target.
- Demonstrate strategic alignment explicitly.
- Define clear in-scope/out-of-scope boundaries.
- Document assumptions and risks — an initiative with no risks listed is likely an incomplete analysis.
- Assign clear, named ownership.

## Don'ts

- Don't scatter `[NEEDS CLARIFICATION]` markers everywhere — cap at 5, prioritized scope > risk/compliance > business value > governance detail; anything below that bar becomes an Open Questions Log entry or an assumption/"To confirm" instead.
- Don't start with the solution (bad: "Build a Salesforce Experience Cloud Portal"; better: "Enable digital, self-service onboarding").
- Don't write a feature list — that belongs in epics/features.
- Don't include detailed requirements, screen designs, acceptance criteria, or technical specifications.
- Don't scope it too large (unrelated objectives bundled together) or too small (a single feature masquerading as an initiative).
- Don't use vague, unmeasurable benefits ("improve efficiency", "drive innovation", "enhance experience").
- Don't ignore baseline metrics — always state current state alongside target state.
- Don't define success as "go live" — success is a measured business outcome.
- Don't ignore dependencies or risks.

## Quality Scoring Model

When asked to review or score an initiative, score out of 100 across these weighted dimensions, using 0–5 per sub-criterion within each dimension (0=Missing, 1=Very Weak, 2=Weak, 3=Acceptable, 4=Strong, 5=Excellent), then scale to the dimension's weight:

| Dimension | Weight |
|-----------|-------:|
| Problem Definition | 10 |
| Strategic Alignment | 15 |
| Business Value | 20 |
| Outcomes & Success Metrics | 15 |
| Scope & Coherence | 10 |
| Feasibility & Readiness | 10 |
| Risks & Dependencies | 10 |
| Evidence & Confidence | 5 |
| Ownership & Governance | 5 |
| **Total** | **100** |

### Readiness Thresholds

| Score | Assessment |
|------:|------------|
| 85–100 | Investment Ready |
| 70–84 | Strong with Conditions |
| 55–69 | Needs Refinement |
| 40–54 | Significant Rework Required |
| Below 40 | Not Ready |

When reporting a score, always list the specific gaps found per dimension (don't just give a number) so the user can act on it.

## Approval Checklist (also embedded in the template)

- [ ] Business problem is clearly stated
- [ ] Business value is quantified
- [ ] Outcomes are defined
- [ ] Strategic alignment exists
- [ ] Sponsor supports the initiative
- [ ] Scope is defined, out-of-scope items documented
- [ ] Risks are identified
- [ ] Assumptions are documented
- [ ] Ownership is assigned
- [ ] Named stakeholders checked against stakeholder-register.md (registered or logged per Guardrail 3)
- [ ] KPIs, baselines, and target values exist
- [ ] No product/vendor names, technology choices, or feature/UI-level language appear anywhere in the document (Guardrail 1)
- [ ] No fabricated numbers, premature decisions, vague outcomes, or "go-live" success criteria (Guardrail 2)
- [ ] Scope, Epic Portfolio, Success Metrics, and Risks are internally consistent with no orphaned or contradictory entries (Guardrail 3)
- [ ] ID is unique and unchanged, EN/FR pair is in sync, and clarification markers (if any) number 5 or fewer (Guardrail 4)
- [ ] Every Open Questions Log entry (if the section exists) has an owner and a target decision date

## Executive Litmus Test

Before calling a draft done, confirm a VP could answer each of these within two minutes from the document alone:

1. What problem are we solving?
2. Why does it matter?
3. What value will be created?
4. How will success be measured?
5. What are the key risks?
6. Who owns the initiative?

If any answer is unclear from the document, it is not ready — go back and strengthen that section.

## Status Gate

Never set `> **Document status:**` to Approved just because the user asks — this pack uses a Draft → In Review → Approved gate, enforced by [pack-integrity-check](../pack-integrity-check/SKILL.md)'s Status Gate Model. Before approving:
1. Run the Quality Scoring Model above (or `/validate initiative <id>`) and confirm the score is 85+ (Investment Ready).
2. Confirm every Approval Checklist item is checked.
3. Confirm zero `[NEEDS CLARIFICATION]` markers remain, and the Open Questions Log (if present) has no item still marked Open.

Only then set status to Approved and replace the template header's `Not recorded` value with `> **Last validated:** <date> — Score <NN>/100 (Investment Ready)`. If an existing document has no `Last validated` field, add the evidence line when approving. This lets `check-checklists.ps1` re-verify the claim later. If any of the three conditions fail, say so and keep the status at Draft/In Review instead.
