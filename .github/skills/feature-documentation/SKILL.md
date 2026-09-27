---
name: feature-documentation
description: "Use when drafting, reviewing, or quality-scoring a Feature Canvas document in this repo's features/ folder, or when explaining what makes a good Feature — creating a new FEAT-XXX, writing the feature statement, benefit hypothesis, primary beneficiary, scope, feature-level acceptance criteria, personas, business rules, dependencies, non-functional considerations, KPIs, risks/assumptions, or candidate story breakdown, or assessing whether a feature is ready for story decomposition. Trigger phrases: new feature, feature canvas, decompose epic into features, feature quality score, is this feature ready, what's a good feature, what makes a good feature, how do I write a good feature, acceptance criteria."
---

# Feature Documentation

## What a Feature Is

A **Feature** is a distinct product function or service that delivers recognizable value to a user, customer, operational stakeholder, or business function. It translates an Epic's business capability into a specific, testable increment that can be decomposed into user stories.

**Feature statement formula:**
```text
Enable [user or stakeholder]
to [perform an action or receive a service]
so that [measurable or observable benefit].
```

A good feature: addresses a specific need, identifies a primary beneficiary, delivers identifiable value, contributes to one Epic outcome, is independently valuable and appropriately sized (smaller than an epic, larger than a story), decomposes into multiple coherent stories, and has testable acceptance criteria.

```text
Initiative → Epic → Feature → User Story → Task
```

Unlike an initiative or epic, a feature **should** include acceptance criteria and be concrete about expected behavior — but it should still avoid prescribing implementation (see Guardrail 1).

## Where It Lives in This Repo

- Folder: `features/`
- Filename: `feat-XXX-slug.md` (+ `feat-XXX-slug-fr.md`)
- Template to copy from: [templates/feature-template.md](../../../templates/feature-template.md) and [templates/feature-template-fr.md](../../../templates/feature-template-fr.md)
- No project-specific worked example is included in the clean-start workspace; use the linked template as the authoritative section structure.
- Parent artifact: an approved Epic — see the [epic-documentation](../epic-documentation/SKILL.md) skill if the parent doesn't exist yet.

Follow the repository-wide conventions from the agent instructions: zero-padded sequential IDs (check existing files and [table-of-content.md](../../../table-of-content.md) for the next free number), kebab-case filenames, mandatory EN/FR pair created together, the standard header blockquote status block (linking the parent epic and the change-management brief), and cross-linking updates in [table-of-content.md](../../../table-of-content.md)/[table-of-content-fr.md](../../../table-of-content-fr.md) after creation.

## Workflow

1. **Clarify scope of the ask.** New feature vs. reviewing/scoring an existing one vs. updating one section. Confirm which approved epic it belongs to — an orphan feature with no traceable parent is not ready to draft.
2. **Find the next free `FEAT-XXX` ID** from `features/` and the README index. Run [pack-integrity-check](../pack-integrity-check/SKILL.md)'s `check-ids.ps1` to confirm the number is actually free rather than relying on a manual scan.
3. **Copy the template** (both EN and FR) — do not invent new section names or skip mandatory sections.
4. **Draft mandatory sections first** (see below), starting with the Feature Statement and Benefit Hypothesis before scope/detail sections.
5. **When working from a short prompt, apply the AI Generation rules below** — use reasonable defaults for structural/process gaps, document every assumption in Assumptions, and cap true unknowns at 5 `[NEEDS CLARIFICATION]` markers (log any overflow in the Open Questions Log). Never invent hard numbers, names, or dates — those get "To confirm" / "To approve" (or a marker), never a fabricated value.
6. **Run all six Guardrail checks** (below) as a final pass — no solution prescription, traceability/ownership, value & testability, correct altitude/cohesion, completeness of scope/risk, and no overlap with sibling features — and rewrite anything found.
7. **Run the quality scoring model** (below) against the draft and report the score/rating back to the user before calling it done.
8. **Update cross-links:** add the feature to the parent epic's Features table, add the feature to [table-of-content.md](../../../table-of-content.md)/[table-of-content-fr.md](../../../table-of-content-fr.md), and note that acceptance criteria stay at feature-behavior level (not full story-level detail). Run `check-parity.ps1` and `check-links.ps1` after saving to confirm the EN/FR pair matches and nothing links to a non-existent file.

## Mandatory Sections

Must be completed before a feature can proceed to story decomposition.

| # | Section | Purpose |
|---|---------|---------|
| 1 | Feature Name / Business Objective | Short, value-oriented title |
| 2 | Feature Owner | Product Owner or equivalent, accountable for scope and acceptance |
| 3 | Primary Beneficiary | Who receives the direct benefit (may have secondary beneficiaries too) |
| 4 | User or Stakeholder Problem | The specific need, difficulty, risk, or opportunity |
| 5 | Feature Statement | "Enable [beneficiary] to [action] so that [benefit]" |
| 6 | Benefit Hypothesis | "We believe... will result in... We will know this is successful when..." |
| 7 | Scope | In-scope and out-of-scope boundaries |
| 8 | Feature-Level Acceptance Criteria | Observable, testable conditions of satisfaction — not a full story-level inventory |
| 9 | Success Measures | KPI table: measure, baseline, target, measurement period |
| 10 | Quality and Compliance Considerations | Accessibility, security, privacy, performance, auditability, retention, regulatory — "not applicable" is fine, silence is not |
| 11 | Dependencies | Systems, teams, policies, or decisions that could affect scope/sequence/completion |
| 12 | Assumptions | Implicit assumptions made visible |
| 13 | Risks | Risks with a response or owner |
| 14 | Candidate User Stories | Likely stories, not fully specified yet — once a candidate is actually drafted, replace its bullet with a link to the real `STORY-XXX` document (see [user-story-documentation](../user-story-documentation/SKILL.md)) |

This repo's template also carries forward its existing mandatory sections: **Candidate User Journey**, **Business Rules to Validate**, **Data/Information**, **UX/Interface Considerations**, and **Feature Readiness Checklist**.

**Conditional section — Open Questions Log:** only needed when there are unresolved items beyond the 5 capped `[NEEDS CLARIFICATION]` markers (see AI Generation below). Omit it entirely if there's nothing to log.

## Guardrail 1: No Unnecessary Solution Prescription

A feature must describe necessary product behavior, but should not prescribe technical implementation unless a genuine, already-approved constraint requires it. This differs from the epic-level no-solution rule: a feature must be more concrete about *behavior*, but should remain open on *implementation*.

- **Not allowed without justification:** naming a specific vendor product, JavaScript component, storage technology, or integration product; specifying page position, button color, or exact screen design; describing database schema or API implementation.
- **Allowed:** "Enable authenticated advisors to upload supporting documents."
- **Component-only features are a violation** unless they state what they enable, why it's necessary, which business features depend on it, and how completion will be demonstrated (e.g., not "Upgrade the integration layer" but "Increase integration capacity to support real-time onboarding-status updates").

## Guardrail 2: Traceability and Ownership

- **One parent Epic:** every feature must identify its parent epic and the specific epic outcome it supports — no orphan features.
- **Primary beneficiary identified:** who receives value when this feature is available?
- **Feature Owner assigned:** a Product Owner or equivalent authorized to clarify scope and accept the result.
- **Delivery team feasibility review:** a feature should not be declared ready solely by business/product roles — delivery and QA must review feasibility, sizing, dependencies, and acceptance criteria before it's called ready.
- **Stakeholder registration:** every named persona/beneficiary must be checked against [stakeholder-register.md](../../../stakeholder-register.md) per [stakeholder-register-validation](../stakeholder-register-validation/SKILL.md) — register them (or log the gap) rather than leaving them defined only in this document.

## Guardrail 3: Value and Testability Are Mandatory

- **User/stakeholder need must exist** — a feature can't exist only because someone asked for specific functionality; state the need, problem, risk, or opportunity that justifies it.
- **Benefit hypothesis is mandatory** — expected value and how it will be validated must be explicit, not implied.
- **Feature-level acceptance criteria are mandatory** — testable, observable conditions of satisfaction; a feature cannot enter delivery planning without them. Vague criteria ("user-friendly", "works correctly", "performance is acceptable") are a violation — rewrite as specific, observable conditions.
- **Success ≠ deployment** — "released"/"implemented"/"deployed" are milestones, not benefits; at least one adoption, performance, quality, operational, customer, or risk measure must be included.
- **Don't hide unresolved decisions inside acceptance criteria** — unresolved matters go in Assumptions, open questions, or dependencies instead.

## Guardrail 4: Correct Altitude and Cohesion

- **Fits the delivery horizon** — normally deliverable within one quarter, not spanning more than one major release. If it needs several quarters/unrelated teams/separate outcomes, it's likely an epic; if it's satisfied by one small story, it may not need to be a feature.
- **Decomposes into multiple stories** — should normally produce at least two or three meaningful candidate stories (heuristic, not a hard rule — don't invent artificial stories just to hit a count).
- **Cohesive value** — all included behavior supports one feature-level purpose; would every proposed story belong in the same user-value conversation?
- **No component-per-layer backlog** — avoid structuring as separate frontend/API/database/integration "features"; define end-to-end, vertically valuable slices instead.
- **Not an epic disguised as a feature** (multiple independent capabilities bundled) and **not a single small story** (e.g., "display a tooltip") promoted to feature level.

## Guardrail 5: Completeness of Scope, Dependencies, and Risk

- **Scope boundaries mandatory** — In Scope and Out of Scope must both be stated; this prevents story-level scope creep.
- **Dependencies and blockers visible** — any team, service, policy, or decision that could affect scope, sequence, or completion must be recorded, not discovered later.
- **Relevant quality attributes addressed** — security, privacy, accessibility, performance, availability, auditability, retention, regulatory compliance; "not applicable" is an acceptable conclusion, silence is not.
- **Open questions cannot be presented as requirements** — each major open question needs a decision required, an accountable owner, a target decision date, and its delivery impact.
- **Non-happy paths considered** — unauthorized access, unavailable dependencies, duplicate submission, invalid input, timeout/interruption, accessibility needs, retention/deletion, recovery after failure.

## Guardrail 6: No Overlap With Sibling Features

A feature's behavior and scope must be distinct from every other feature under the same parent epic. Use the shared [sibling-overlap-validation](../sibling-overlap-validation/SKILL.md) skill to run this check — it covers listing siblings via the parent epic's Features table, comparing feature statements and In Scope/acceptance-criterion behavior, and resolving genuine overlaps (merge recommendation or two-way Out of Scope cross-reference). Run it on every new feature and on every edit that touches Scope, the Feature Statement, or acceptance criteria, even a small one.

## For AI Generation (Drafting From a Short Prompt)

When asked to generate a feature from a brief prompt rather than a fully detailed brief:

1. **Make informed guesses.** Use the prompt's context and the parent epic's Scope and Features table. Apply industry patterns only when they fit the user's stated business domain; do not assume group insurance or reuse a demo project's requirements.
2. **Document assumptions.** Every guess must be written into Assumptions, not silently folded into another section.
3. **Limit clarifications to a maximum of 5.** Use an inline `[NEEDS CLARIFICATION: <question>]` marker — not a silent "To confirm" — only for decisions that are both (a) impossible to reasonably default and (b) material enough to change the shape of the feature depending on the answer.
4. **Prioritize which unknowns earn a marker**, in this order: **stakeholder identification** (is the primary beneficiary named and registered?) > **scope boundary or primary beneficiary** > **parent epic linkage or benefit hypothesis** > **acceptance criteria / success measure definition** > **dependency or quality-attribute detail**. Only the top 1–5 unresolved items by this order get a marker; everything else becomes an Open Questions Log entry (Question | Why It Matters | Decision Needed By | Suggested Owner | Status) or a documented assumption/"To confirm" value.
5. **Think like a reviewer, not a drafter.** Before finishing, run the feature against the Feature Litmus Test below — if a reviewer couldn't answer within two minutes, it's too vague and needs sharpening or a marker, not filler language.
6. **Common areas needing clarification** (raise only if no reasonable default fits): which approved epic this feature belongs to, the identity of the Feature Owner, or a scope boundary that materially changes which stories are in play.

### Examples of Reasonable Defaults (don't ask about these)

- **KPI baselines/targets not yet measured:** state as "To confirm" / "To approve" instead of blocking on a marker.
- **Personas:** derive roles from the user's prompt and parent epic; use generic role descriptions only as provisional assumptions and ask when the beneficiary is unclear.
- **Risk categories:** consider incomplete or contradictory rules, bypass behavior, unsupported data, dependency delays, and late measurement definition as generic prompts; tailor them to the stated domain.
- **Scope exclusions:** default to excluding capabilities assigned to another feature/epic, final technical implementation choices, and unapproved business-policy changes — these are standing out-of-scope items across this pack.
- **Non-functional considerations:** default to the standard set (security/least-privilege, privacy/data minimization, availability, performance, auditability, accessibility, bilingual content) and mark "not applicable" explicitly where genuinely irrelevant, rather than omitting the section.

## Do's

- Start with the user/stakeholder need before defining behavior.
- Express the feature as valuable behavior using verbs like enable, allow, provide, support, notify, prevent, validate, display, track.
- Include a benefit hypothesis with a measurable validation method.
- Identify the primary beneficiary explicitly.
- Define clear in-scope/out-of-scope boundaries.
- Use testable, observable, technology-neutral acceptance criteria.
- Address meaningful edge conditions (unauthorized access, unavailable services, duplicates, invalid input, timeouts, accessibility, retention, recovery).
- Make it vertically valuable — end-to-end slices, not one feature per system layer.
- Involve Product Owner, BA, user/business representative, delivery, QA, and relevant specialists (architecture/privacy/security) in validation.

## Don'ts

- Don't describe only a technical component without stating its enabling business purpose — see Guardrail 1.
- Don't confuse a feature with a task/activity ("configure a server", "update a database table", "conduct a security review").
- Don't make the feature an epic (too broad, multiple independent capabilities) or a single small story (too narrow) — see Guardrail 4.
- Don't prescribe unnecessary design details (page position, button color, framework, vendor, exact screen design, API implementation) unless a genuine approved constraint requires it.
- Don't use vague acceptance criteria ("user-friendly", "works correctly", "performance is acceptable").
- Don't define success as deployment/release — see Guardrail 3.
- Don't hide unresolved decisions inside acceptance criteria — record them as assumptions, open questions, or dependencies.
- Don't create one feature per system component (frontend/API/database/integration).
- Don't forget non-happy paths.
- Don't scatter `[NEEDS CLARIFICATION]` markers everywhere — cap at 5, prioritized scope/beneficiary > epic linkage/benefit hypothesis > acceptance criteria/success measures > dependency detail; anything below that bar becomes an Open Questions Log entry or an assumption/"To confirm" instead.

## Quality Scoring Model

When asked to review or score a feature, score out of 100 across these weighted dimensions, using 0–5 per sub-criterion (0=Missing, 1=Very Weak, 2=Weak, 3=Acceptable, 4=Strong, 5=Excellent), then scale to the dimension's weight: `weighted points = (criterion score / 5) × criterion weight`.

| Dimension | Weight |
|-----------|-------:|
| User or Stakeholder Need | 10 |
| Benefit Hypothesis and Value | 15 |
| Epic Alignment and Traceability | 10 |
| Feature Definition | 10 |
| Scope and Sizing | 10 |
| Acceptance Criteria and Testability | 15 |
| Story Decomposability | 10 |
| Quality, Security, and Compliance | 5 |
| Dependencies, Assumptions, and Risks | 5 |
| Evidence and Success Measurement | 5 |
| Ownership and Team Understanding | 5 |
| **Total** | **100** |

### Mandatory Minimum Scores

A high total score must not compensate for a critical weakness. Each of these must score at least 3/5: User/Stakeholder Need, Benefit Hypothesis, Epic Alignment, Scope and Sizing, Acceptance Criteria, Story Decomposability, Ownership. A feature also fails validation outright if it creates an unresolved critical legal, regulatory, security, privacy, accessibility, or architectural blocker.

### Readiness Thresholds

| Score | Classification | Recommended Action |
|------:|-----------------|---------------------|
| 90–100 | Story-ready | Proceed to detailed story decomposition |
| 80–89 | Strong Feature | Address minor gaps during refinement |
| 70–79 | Conditionally ready | Resolve identified conditions before commitment |
| 60–69 | Requires significant refinement | Return to feature discovery |
| Below 60 | Not ready | Reframe, split, merge, or reject |

Governance gates: 70+ may enter structured backlog refinement, 80+ may be considered for planning, 90+ should be ready for final story decomposition and delivery commitment. When reporting a score, always list the specific gaps found per dimension (don't just give a number) so the user can act on it.

## Approval Checklist (also embedded in the template)

### Traceability
- [ ] Linked to one parent Epic
- [ ] Contribution to the Epic outcome is clear

### User and Value
- [ ] Primary beneficiary identified
- [ ] Primary beneficiary checked against stakeholder-register.md (registered or logged per Guardrail 2)
- [ ] User or stakeholder need documented
- [ ] Benefit hypothesis documented
- [ ] Success measure and target defined

### Definition (Guardrails 1 and 4)
- [ ] Feature describes valuable product behavior, not a technical component or task
- [ ] Feature does not prescribe unnecessary technical design
- [ ] Feature is not an Epic and not a single small story

### Scope and Acceptance (Guardrails 3 and 5)
- [ ] In Scope and Out of Scope documented
- [ ] Feature-level acceptance criteria exist, are observable, and are testable
- [ ] Material edge conditions and relevant non-functional requirements considered

### Delivery Readiness (Guardrail 2)
- [ ] Dependencies, assumptions, and risks identified
- [ ] Major open questions assigned (owner + target date)
- [ ] Feature Owner assigned
- [ ] Delivery team/QA reviewed feasibility

### Overlap Check (Guardrail 6)
- [ ] No feature statement, in-scope item, or acceptance-criterion behavior is duplicated across sibling features under the same epic
- [ ] Clarification markers (if any) number 5 or fewer, and every Open Questions Log entry (if the section exists) has an owner and a target decision date

## Feature Litmus Test

Before calling a draft done, confirm a reviewer could answer each of these within about two minutes from the document alone:

1. Which Epic does this Feature support?
2. Who benefits?
3. What user or stakeholder need does it address?
4. What valuable behavior will become available?
5. What benefit is expected?
6. How will that benefit be measured?
7. What is included and excluded?
8. How will the organization know the Feature is accepted?
9. Can it be decomposed into coherent stories?
10. Can it fit within the normal delivery horizon?

If several answers are unclear, the feature is not ready for story decomposition or planning.

## Status Gate

Never set `> **Document status:**` to Approved just because the user asks — this pack uses a Draft → In Review → Approved gate, enforced by [pack-integrity-check](../pack-integrity-check/SKILL.md)'s Status Gate Model. Before approving:
1. Run the Quality Scoring Model above (or `/validate feature <id>`) and confirm the score is 90+ (Story-ready), with every Mandatory Minimum Score also met.
2. Confirm every Approval Checklist item is checked.
3. Confirm zero `[NEEDS CLARIFICATION]` markers remain, and the Open Questions Log (if present) has no item still marked Open.

Only then set status to Approved and replace the template header's `Not recorded` value with `> **Last validated:** <date> — Score <NN>/100 (Story-ready)`. If an existing document has no `Last validated` field, add the evidence line when approving. This lets `check-checklists.ps1` re-verify the claim later. If any of the three conditions fail, say so and keep the status at Draft/In Review instead.
