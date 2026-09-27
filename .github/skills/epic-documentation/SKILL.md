---
name: epic-documentation
description: "Use when drafting, reviewing, or quality-scoring an Epic document in this repo's epics/ folder, or when explaining what makes a good Epic — creating a new EPIC-XXX, writing the epic summary/capability statement, problem/opportunity, users, business outcome, epic hypothesis, success metrics, scope, candidate features, dependencies, risks and assumptions, or ownership, or assessing whether an epic is ready for feature discovery. Trigger phrases: new epic, epic canvas, decompose initiative into epics, epic quality score, is this epic ready, what's a good epic, what makes a good epic, how do I write a good epic."
---

# Epic Documentation

## What an Epic Is

An **Epic** is a business capability that contributes to the success of an Initiative and can be decomposed into multiple Features. It answers *"What business capability must we deliver to achieve the initiative outcome?"*

Focus on: business problems, user needs, business capabilities, outcomes, success measures.

Do **not** focus on: technical solutions, detailed requirements, user stories, screen designs, implementation details — those belong to features and stories.

```text
Vision → Strategy → Initiative → Epic → Feature → User Story → Task
```

An epic should be **larger than a Feature** and **smaller than an Initiative** — one business capability, decomposable into several features, generally fitting within 1–3 quarters / 1–2 major releases.

## Where It Lives in This Repo

- Folder: `epics/`
- Filename: `epic-XXX-slug.md` (+ `epic-XXX-slug-fr.md`)
- Template to copy from: [templates/epic-template.md](../../../templates/epic-template.md) and [templates/epic-template-fr.md](../../../templates/epic-template-fr.md)
- No project-specific worked example is included in the clean-start workspace; use the linked template as the authoritative section structure.
- Parent artifact: an approved Initiative — see the [initiative-documentation](../initiative-documentation/SKILL.md) skill if the parent doesn't exist yet.

Follow the repository-wide conventions from the agent instructions: zero-padded sequential IDs (check existing files and [table-of-content.md](../../../table-of-content.md) for the next free number), kebab-case filenames, mandatory EN/FR pair created together, the standard header blockquote status block (linking the parent initiative and the change-management brief), and cross-linking updates in [table-of-content.md](../../../table-of-content.md)/[table-of-content-fr.md](../../../table-of-content-fr.md) after creation.

## Workflow

1. **Clarify scope of the ask.** New epic vs. reviewing/scoring an existing one vs. updating one section. Confirm which approved initiative it belongs to — an epic without a named parent initiative is not ready to draft.
2. **Automatically get the latest before creating a new epic.** Follow the [version-history](../version-history/SKILL.md) preflight; do not ask the user to run `/get-latest` manually. Save unsaved edits first and resolve incoming conflicts before continuing. If the refresh cannot complete, explain the limitation and ask whether to retry or proceed with ID-collision risk. Skip this step when only reviewing or editing an existing epic.
3. **Find the next free `EPIC-XXX` ID** from `epics/` and the README index after refreshing. Run [pack-integrity-check](../pack-integrity-check/SKILL.md)'s `check-ids.ps1` immediately before assigning the ID.
4. **Copy the template** (both EN and FR) — do not invent new section names or skip mandatory sections.
5. **Draft mandatory sections first** (see below).
6. **When working from a short prompt, apply the AI Generation rules below** — use reasonable defaults for structural/process gaps, document every assumption in Risks and Assumptions, and cap true unknowns at 5 `[NEEDS CLARIFICATION]` markers (log any overflow in the Open Questions Log). Never invent hard numbers, names, or dates — those get "To confirm" / "To approve" (or a marker), never a fabricated value.
7. **Run all five Guardrail checks** (below) as a final pass — no solutioning, correct altitude, mandatory completeness, linkage/accountability, and no overlap with sibling epics — and rewrite anything found.
8. **Run the quality scoring model** (below) against the draft and report the score/rating back to the user before calling it done.
9. **Update cross-links:** add the epic to the parent initiative's Epic Portfolio table, add the epic to [table-of-content.md](../../../table-of-content.md)/[table-of-content-fr.md](../../../table-of-content-fr.md), and link any child features once they exist. Run `check-parity.ps1` and `check-links.ps1` after saving to confirm the EN/FR pair matches and nothing links to a non-existent file.

## Mandatory Sections

Must be completed before an epic can be approved for feature discovery.

| # | Section | Purpose |
|---|---------|---------|
| 1 | Epic Summary / Capability Statement | What business capability will exist after delivery, in one sentence — not a technology |
| 2 | Business Problem / Opportunity | Current situation, pain points, business impact |
| 3 | Users | Primary, secondary, and operational users who benefit |
| 4 | Business Outcome | The measurable business improvement expected (distinct from the KPI numbers themselves) |
| 5 | Epic Hypothesis | "We believe that `<capability>` will achieve `<outcome>`, measured by `<feature KPIs and initiative outcomes>`" |
| 6 | Success Metrics | KPI table with current state and target state |
| 7 | Scope | In-scope and out-of-scope boundaries |
| 8 | Features / Candidate Features | Link to child Feature Canvases once they exist, or a candidate feature list before they're drafted |
| 9 | Dependencies | Major dependencies (systems, teams, approvals) |
| 10 | Risks and Assumptions | Key risks with impact/response, and assumptions made visible |
| 11 | Ownership | Product Manager, Product Owner, Business Owner — no epic is approved without named accountability |
| 12 | Readiness Criteria | Checklist confirming the epic is ready to hand off to feature discovery |

**Conditional section — Open Questions Log:** only needed when there are unresolved items beyond the 5 capped `[NEEDS CLARIFICATION]` markers (see AI Generation below). Omit it entirely if there's nothing to log.

## Guardrail 1: No Solutioning / No Technical Titles

An epic must describe a business capability, never a technology implementation. Treat any of the following as a violation to rewrite:

- **Solutioning:** "Implement Salesforce Experience Cloud", "Create MuleSoft APIs", "Build Power Automate Flows", "Develop React Portal" — name the capability instead ("Enable digital onboarding submissions", "Enable secure document exchange").
- **Technical titles:** "Salesforce Case Management", "OAuth Authentication", "MuleSoft Integration" as the epic name — prefer "Customer Intake", "Identity Management", "Document Exchange".
- **Implementation verbs:** "Build", "Create", "Implement", "Develop" as the lead verb — prefer "Enable", "Provide", "Support", "Allow".
- **Detailed requirements at epic level:** wireframes, API details, acceptance criteria, field definitions, user stories — these belong at Feature or Story level, not here.

**Validation question:** *Would the epic still make sense if the underlying technology changed?* If not, it's solutioning — rewrite one level up in abstraction, and move any true solution detail to a linked feature canvas instead.

## Guardrail 2: Correct Altitude

An epic is not an initiative and not a feature. Check for:

- **Too large (looks like an initiative):** multiple business domains, multiple strategic objectives, multiple years of work, or multiple teams delivering independent capabilities — push it up to the initiative-documentation skill instead.
- **Too small (looks like a feature):** a single screen, button, or narrow function ("Add Upload Button") — this is a feature, not an epic.
- **Mixed outcomes:** more than one primary business outcome bundled together (e.g., "Customer Intake, Document Management, Reporting, Status Tracking" as one epic) — split into separate epics, one capability each.
- **Not decomposable:** if fewer than ~3 meaningful features can be identified, the epic is either too narrow or not yet understood well enough to draft.
- **Delivery horizon:** should generally fit 1–3 quarters / 1–2 major releases; if significantly larger, it likely belongs at initiative level.

## Guardrail 3: Mandatory Completeness

Every epic must have all of the following before it can be scored as ready — treat a missing one as a blocking gap, not a stylistic nit:

- A documented business problem (what disappears if this epic succeeds?).
- Explicit primary users (who benefits?).
- A stated business outcome (what measurable business improvement should occur?).
- Success metrics with baseline and target.
- In-scope and out-of-scope boundaries.

## Guardrail 4: Linkage and Accountability

- **Initiative linkage:** every epic must support a single approved initiative — if none is named, ask which initiative outcome this epic contributes to before drafting further.
- **Ownership:** Product Manager, Product Owner, and Business Owner must all be named (or explicitly "To confirm") — an epic cannot be approved without them.
- **Dependencies visible:** major dependencies (authentication, shared platforms, security/architecture reviews, other epics) must be documented, not discovered later.
- **Stakeholder registration:** every named user group (Primary, Secondary, Operational) must be checked against [stakeholder-register.md](../../../stakeholder-register.md) per [stakeholder-register-validation](../stakeholder-register-validation/SKILL.md) — register them (or log the gap) rather than leaving them defined only in this document.

## Guardrail 5: No Overlap With Sibling Epics

An epic's capability and scope must be distinct from every other epic under the same parent initiative. Use the shared [sibling-overlap-validation](../sibling-overlap-validation/SKILL.md) skill to run this check — it covers listing siblings via the parent initiative's Epic Portfolio table, comparing capability statements and In Scope bullets, and resolving genuine overlaps (merge recommendation or two-way Out of Scope cross-reference). Run it on every new epic and on every edit that touches Scope or the Capability Statement, even a small one.

## For AI Generation (Drafting From a Short Prompt)

When asked to generate an epic from a brief prompt rather than a fully detailed brief:

1. **Make informed guesses.** Use the prompt's context and the parent initiative's Scope and Epic Portfolio. Apply industry patterns only when they fit the user's stated business domain; do not assume group insurance or reuse a demo project's requirements.
2. **Document assumptions.** Every guess must be written into Risks and Assumptions, not silently folded into another section.
3. **Limit clarifications to a maximum of 5.** Use an inline `[NEEDS CLARIFICATION: <question>]` marker — not a silent "To confirm" — only for decisions that are both (a) impossible to reasonably default and (b) material enough to change the shape of the epic depending on the answer.
4. **Prioritize which unknowns earn a marker**, in this order: **stakeholder identification** (are the primary/secondary/operational users named and registered?) > **capability/scope boundary** (what's in/out) > **parent initiative linkage or business outcome** > **success metric definition** > **dependency/operational detail**. Only the top 1–5 unresolved items by this order get a marker; everything else becomes an Open Questions Log entry (Question | Why It Matters | Decision Needed By | Suggested Owner | Status) or a documented assumption/"To confirm" value.
5. **Think like a governance reviewer, not a drafter.** Before finishing, run the epic against the Executive Litmus Test below — if a stakeholder couldn't answer within 60 seconds, it's too vague and needs sharpening or a marker, not filler language.
6. **Common areas needing clarification** (raise only if no reasonable default fits): which approved initiative this epic belongs to, the identity of the Business Owner, or a scope boundary that materially changes which features are in play.

### Examples of Reasonable Defaults (don't ask about these)

- **KPI baselines/targets not yet measured:** state as "Baseline to be confirmed" / "Target to be approved" instead of blocking on a marker.
- **Stakeholder roles:** default to the standard role set used across this pack's epics (Product Manager, Product Owner, Business Analyst, Solution Architecture, UX, Data, Security, Privacy, Compliance, Delivery, QA).
- **Risk categories:** consider unresolved business rules, local feature optimization, and unvalidated roles as generic prompts; tailor them to the project's stated domain and do not copy example requirements.
- **Scope exclusions:** default to excluding capabilities owned by sibling epics, final technical design/vendor selection, and unapproved policy/legal/privacy/security/operational changes — these are standing out-of-scope items across this pack.

## Do's

- Start with the business problem — current situation, pain points, business impact.
- Focus on business capabilities — what will exist after delivery, not how it's built.
- Define primary and secondary users explicitly.
- Define the business outcome and include measurable success metrics.
- Keep scope focused: one capability, one primary outcome.
- Document scope boundaries (In Scope / Out of Scope) and dependencies.
- Link every epic to an approved initiative.

## Don'ts

- Don't describe technical solutions or use implementation verbs ("Build", "Create", "Implement", "Develop") — see Guardrail 1.
- Don't make it a feature list — a collection of features is not an epic.
- Don't make it an initiative (multiple domains/objectives) or a feature (too narrow) — see Guardrail 2.
- Don't mix multiple outcomes into a single epic.
- Don't ignore the user, success metrics, dependencies, or risks.
- Don't include user stories, wireframes, API details, or acceptance criteria — see Guardrail 3/Feature level.
- Don't scatter `[NEEDS CLARIFICATION]` markers everywhere — cap at 5, prioritized capability/scope > initiative linkage/outcome > success metrics > dependency detail; anything below that bar becomes an Open Questions Log entry or an assumption/"To confirm" instead.

## Quality Scoring Model

When asked to review or score an epic, score out of 100 across these weighted dimensions, using 0–5 per sub-criterion (0=Missing, 1=Very Weak, 2=Weak, 3=Acceptable, 4=Strong, 5=Excellent), then scale to the dimension's weight:

| Dimension | Weight |
|-----------|-------:|
| Business Problem Clarity | 15 |
| Business Outcome & Value | 15 |
| User Understanding | 10 |
| Capability Definition | 15 |
| Scope Quality | 10 |
| Success Metrics | 10 |
| Feature Decomposability | 10 |
| Dependencies & Risks | 5 |
| Feasibility & Readiness | 5 |
| Ownership & Governance | 5 |
| **Total** | **100** |

### Mandatory Minimum Scores

An epic cannot proceed to feature discovery unless each of these dimensions scores at least 3/5, regardless of total score: Business Problem, Business Outcome, Capability Definition, Success Metrics, Ownership.

### Readiness Thresholds

| Score | Assessment |
|------:|------------|
| 90–100 | Ready for Feature Discovery |
| 80–89 | Strong Epic |
| 70–79 | Requires Refinement |
| 60–69 | Significant Rework Required |
| Below 60 | Not Ready |

When reporting a score, always list the specific gaps found per dimension (don't just give a number) so the user can act on it.

## Approval Checklist (also embedded in the template)

### Strategic Alignment
- [ ] Linked to an approved initiative
- [ ] Supports initiative outcomes

### Business Value
- [ ] Business problem documented
- [ ] Business outcome documented
- [ ] Success metrics defined (baseline and target)

### User Focus
- [ ] Primary users identified
- [ ] Secondary/operational users identified
- [ ] Named users checked against stakeholder-register.md (registered or logged per Guardrail 4)

### Scope
- [ ] In Scope defined
- [ ] Out of Scope defined

### Quality (Guardrails)
- [ ] Represents one business capability, not solutioning or a technical title (Guardrail 1)
- [ ] Not an initiative and not a feature — correct altitude, fits delivery horizon (Guardrail 2)
- [ ] All mandatory completeness items present (Guardrail 3)
- [ ] Initiative linkage, ownership, and dependencies are all visible (Guardrail 4)
- [ ] No capability or in-scope item duplicated across sibling epics under the same initiative (Guardrail 5)
- [ ] Clarification markers (if any) number 5 or fewer, and every Open Questions Log entry (if the section exists) has an owner and a target decision date

### Readiness
- [ ] Can be decomposed into at least three meaningful features
- [ ] Dependencies identified
- [ ] Risks and assumptions identified
- [ ] Ownership assigned (Product Manager, Product Owner, Business Owner)

## Executive Litmus Test

Before calling a draft done, confirm a stakeholder could answer each of these within 60 seconds from the document alone:

1. What business capability are we delivering?
2. What problem does it solve?
3. Who benefits?
4. What outcome are we trying to achieve?
5. How will success be measured?
6. What major features will likely be needed?

If any answer is unclear from the document, it is not ready — go back and strengthen that section.

## Status Gate

Never set `> **Document status:**` to Approved just because the user asks — this pack uses a Draft → In Review → Approved gate, enforced by [pack-integrity-check](../pack-integrity-check/SKILL.md)'s Status Gate Model. Before approving:
1. Run the Quality Scoring Model above (or `/validate epic <id>`) and confirm the score is 90+ (Ready for Feature Discovery), with every Mandatory Minimum Score also met.
2. Confirm every Approval Checklist item is checked.
3. Confirm zero `[NEEDS CLARIFICATION]` markers remain, and the Open Questions Log (if present) has no item still marked Open.

Only then set status to Approved and replace the template header's `Not recorded` value with `> **Last validated:** <date> — Score <NN>/100 (Ready for Feature Discovery)`. If an existing document has no `Last validated` field, add the evidence line when approving. This lets `check-checklists.ps1` re-verify the claim later. If any of the three conditions fail, say so and keep the status at Draft/In Review instead.
