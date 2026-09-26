---
name: user-story-documentation
description: "Use when drafting, reviewing, or quality-scoring a User Story document in this repo's stories/ folder, or when explaining what makes a good User Story — creating a new STORY-XXX, writing the story statement (As a/I want/So that), acceptance criteria, INVEST compliance, definition of ready/done, or assessing whether a story is ready for a sprint or demonstrably complete. Trigger phrases: new user story, write a story, story canvas, decompose feature into stories, story quality score, is this story ready, INVEST, definition of ready, definition of done, what's a good user story, what makes a good user story, how do I write a good user story, acceptance criteria."
---

# User Story Documentation

## What a User Story Is

A **User Story** is a small, valuable, and testable increment of functionality expressed from the perspective of a user or stakeholder. It answers *"What does the user need to accomplish?"*

**Story statement formula:**
```text
As a <user or stakeholder>
I want <capability or outcome>
So that <business or user value>.
```

A User Story describes who needs something, what they need, and why — it does **not** prescribe the complete technical implementation.

```text
Initiative → Epic → Feature → User Story → Task
(Why invest?)  (What capability?)  (What solution?)  (What does the user need?)  (How do we build it?)
```

| Level | Key Question |
|---|---|
| Initiative | Why should the organization invest? |
| Epic | What capability is required? |
| Feature | What solution capability will address the need? |
| **User Story** | **What does the user need to accomplish?** |
| Task | How will the team implement it? |

## What a User Story Is Not

A User Story is not: a project, an Initiative, an Epic, a Feature, a technical specification, a detailed solution design, an implementation task, a guarantee that scope will never change, or a substitute for direct conversation between the team and the Product Owner before and during delivery.

## Characteristics of a Good Story — INVEST

| Letter | Means | Check |
|---|---|---|
| **I**ndependent | Minimal forced ordering/dependency on other stories | Could this be built and demoed on its own? |
| **N**egotiable | A conversation starter, not a rigid contract | Does it leave room to discuss the best way to deliver the value? |
| **V**aluable | Delivers value to a user, customer, or the business | Would anyone notice or care if this shipped? |
| **E**stimable | The team can size it with reasonable confidence | Is there enough detail to estimate, without being over-specified? |
| **S**mall | Fits comfortably within a single sprint | Could this realistically be finished in one sprint by one team? |
| **T**estable | Has clear, objective acceptance criteria | Could QA write a pass/fail test from this alone? |

Score every story against all six before calling it ready — a story failing even one INVEST letter is not ready for a sprint (see Guardrail 3).

## Where It Lives in This Repo

- Folder: `stories/`
- Filename: `story-XXX-slug.md` (+ `story-XXX-slug-fr.md`)
- Template to copy from: [templates/story-template.md](../../../templates/story-template.md) and [templates/story-template-fr.md](../../../templates/story-template-fr.md)
- Parent artifact: an approved Feature — see [feature-documentation](../feature-documentation/SKILL.md) if the parent doesn't exist yet. There is no dedicated Change Management brief at story level — story-level change impact is covered by the parent feature's `CM-FEAT-XXX` brief.

Follow the repository-wide conventions: zero-padded sequential IDs (check existing files and [table-of-content.md](../../../table-of-content.md) for the next free number — run [pack-integrity-check](../pack-integrity-check/SKILL.md)'s `check-ids.ps1` to confirm), kebab-case filenames, mandatory EN/FR pair created together, the standard header blockquote status block linking the parent feature.

## Workflow

1. **Clarify scope of the ask.** New story vs. reviewing/scoring an existing one. Confirm which approved feature it belongs to — an orphan story with no traceable parent is not ready to draft.
2. **Find the next free `STORY-XXX` ID** from `stories/` and [table-of-content.md](../../../table-of-content.md). Run `check-ids.ps1` to confirm the number is actually free.
3. **Copy the template** (both EN and FR) — do not invent new section names or skip mandatory sections.
4. **Draft mandatory sections first** (see below), starting with the Story Statement before acceptance criteria and detail sections.
5. **When working from a short prompt, apply the AI Generation rules below** — use reasonable defaults for structural/process gaps, document every assumption, and cap true unknowns at 5 `[NEEDS CLARIFICATION]` markers (log any overflow in the Open Questions Log).
6. **Run all five Guardrail checks** (below) as a final pass — no unnecessary solutioning, traceability/ownership, INVEST compliance, definition of ready/done, and no overlap with sibling stories — and rewrite anything found.
7. **Run the quality scoring model** (below) against the draft and report the score/rating back to the user before calling it done.
8. **Update cross-links:** add the story to the parent feature's Candidate User Stories list (replacing the candidate bullet with a real link once drafted), add it to [table-of-content.md](../../../table-of-content.md)/[table-of-content-fr.md](../../../table-of-content-fr.md). Run `check-parity.ps1` and `check-links.ps1` after saving.

## Mandatory Sections

Must be completed before a story can enter a sprint (Definition of Ready) or be closed (Definition of Done).

| # | Section | Purpose |
|---|---------|---------|
| 1 | Story Statement | "As a / I want / So that" |
| 2 | Parent Feature | Traceability — which feature and outcome this contributes to |
| 3 | Story Owner | Product Owner or equivalent, accountable for scope and acceptance |
| 4 | Primary User / Stakeholder | Who needs this |
| 5 | Business / User Value | Why it matters — the "so that" made explicit and, where possible, measurable |
| 6 | Acceptance Criteria | Given/When/Then or equivalent — testable, observable conditions of satisfaction |
| 7 | Scope | In-scope and out-of-scope boundaries for this story specifically |
| 8 | Dependencies | Other stories, systems, teams, or decisions this depends on |
| 9 | Assumptions | Implicit assumptions made visible |
| 10 | Risks | Only if material — small stories often have none |
| 11 | Definition of Ready Checklist | Confirms the story can safely enter a sprint |
| 12 | Definition of Done Checklist | Confirms the story is demonstrably complete before closing |

**Conditional section — Open Questions Log:** only needed when there are unresolved items beyond the 5 capped `[NEEDS CLARIFICATION]` markers.

## Guardrail 1: No Unnecessary Solutioning

A story should be concrete about the *behavior* expected but must not dictate implementation unless a genuine, already-approved constraint requires it — same principle as feature-documentation Guardrail 1, one level more granular.

- **Not allowed without justification:** naming a specific class/function/database table/library, prescribing exact UI pixel layout, or specifying an algorithm.
- **Allowed:** "the system rejects the upload with a specific, field-level error message" (behavior), not "call `validateUpload()` and throw `InvalidFileException`" (implementation).
- **Validation question:** *Would this story still make sense if the team chose a different technology to build it?*

## Guardrail 2: Traceability and Ownership

- **One parent Feature:** every story must identify its parent feature and the specific behavior it contributes to — no orphan stories.
- **Story Owner assigned:** a Product Owner or equivalent authorized to clarify scope and accept the result.
- **Primary user/stakeholder identified:** who benefits, specifically — not "users."
- **Stakeholder registration:** the named primary user/stakeholder must be checked against [stakeholder-register.md](../../../stakeholder-register.md) per [stakeholder-register-validation](../stakeholder-register-validation/SKILL.md) — register them (or log the gap) rather than leaving them defined only in this document.

## Guardrail 3: INVEST Compliance Is Mandatory

Run every story through all six INVEST letters (above) before calling it ready. A story that fails any one of them is not ready for a sprint:
- **Not Independent** (heavily blocked by other undelivered stories) → flag the dependency and consider resequencing or merging.
- **Not Negotiable** (reads like a rigid spec, no room for a "how") → strip implementation prescription (see Guardrail 1).
- **Not Valuable** (no one would notice if it shipped) → question whether it should exist as a story at all, or is really a task.
- **Not Estimable** (too vague or too much unknown) → add detail or split out the unknown as a spike/discovery item.
- **Not Small** (can't realistically finish in one sprint) → split into multiple stories, each independently valuable.
- **Not Testable** (no way to objectively verify) → add or sharpen acceptance criteria until QA could write a pass/fail test from them alone.

## Guardrail 4: Definition of Ready / Definition of Done

- **Before entering a sprint (Definition of Ready):** Story Statement, Parent Feature, acceptance criteria, and dependencies must all be complete; the team must be able to estimate it.
- **Before closing (Definition of Done):** every acceptance criterion must be demonstrably met (not just "coded") — QA perspective included, not just Product/BA sign-off.
- **Don't skip either gate under delivery pressure** — a story closed without meeting its own acceptance criteria is not done, it's abandoned.

## Guardrail 5: No Overlap With Sibling Stories

A story's behavior must be distinct from every other story under the same parent feature. Use the shared [sibling-overlap-validation](../sibling-overlap-validation/SKILL.md) skill to run this check — comparing story statements and acceptance-criterion behavior against every sibling story under the same feature, resolving genuine overlaps (merge recommendation or explicit boundary clarification). Run it on every new story and on every edit that touches the Story Statement, Scope, or Acceptance Criteria, even a small one.

## For AI Generation (Drafting From a Short Prompt)

1. **Make informed guesses.** Use the prompt's context, the parent feature's Scope and Candidate User Stories list, this pack's existing artifacts, and standard group-insurance/industry patterns to fill structural gaps.
2. **Document assumptions.** Every guess must be written into Assumptions, not silently folded into another section.
3. **Limit clarifications to a maximum of 5.** Use an inline `[NEEDS CLARIFICATION: <question>]` marker — not a silent "To confirm" — only for decisions both (a) impossible to reasonably default and (b) material enough to change the shape of the story.
4. **Prioritize which unknowns earn a marker**, in this order: **stakeholder identification** (is the primary user named and registered?) > **scope boundary or primary user** > **parent feature linkage or value** > **acceptance criteria definition** > **dependency/technical detail**. Everything past the top 1–5 becomes an Open Questions Log entry (Question | Why It Matters | Decision Needed By | Suggested Owner | Status) or a documented assumption.
5. **Think like a tester, not a drafter.** Before finishing, confirm every acceptance criterion is phrased so a tester could mark it pass/fail without asking a follow-up question.
6. **Common areas needing clarification** (raise only if no reasonable default fits): which approved feature this story belongs to, the identity of the Story Owner, or a scope boundary that materially changes what "done" means.

### Examples of Reasonable Defaults (don't ask about these)

- **Estimate/size not yet set:** leave as "To confirm" — sizing happens during sprint planning, not story drafting.
- **Personas/primary user:** default to the standard role set already used across this pack's features.
- **Non-functional carry-forward:** inherit the parent feature's Non-Functional/Quality and Compliance Considerations unless this story specifically changes them.
- **Scope exclusions:** default to excluding capabilities assigned to a sibling story or the parent feature's own out-of-scope items.

## Do's

- Write the story from the user/stakeholder's perspective, not the system's.
- Keep it small enough to finish in one sprint — split large stories rather than stretch the definition of "small."
- Make acceptance criteria observable and testable, not aspirational adjectives.
- Identify the primary user/stakeholder and the Story Owner explicitly.
- Treat the story as a placeholder for a conversation, not a finished contract — leave room to discuss "how."
- Run all six INVEST checks before calling a story ready.

## Don'ts

- Don't prescribe implementation details (classes, schemas, exact algorithms) unless a genuine approved constraint requires it — see Guardrail 1.
- Don't write a story that's really an Epic or Feature in disguise (too large, spans multiple sprints, bundles unrelated value).
- Don't write a story that's really a Task (no independent user value, purely technical).
- Don't use vague acceptance criteria ("works well", "is fast", "user-friendly").
- Don't close a story without demonstrating every acceptance criterion met.
- Don't scatter `[NEEDS CLARIFICATION]` markers everywhere — cap at 5, prioritized scope/user > feature linkage/value > acceptance criteria > dependency detail.

## Quality Scoring Model

Score out of 100 across these weighted dimensions, using 0–5 per sub-criterion (0=Missing, 1=Very Weak, 2=Weak, 3=Acceptable, 4=Strong, 5=Excellent), then scale to the dimension's weight:

| Dimension | Weight |
|-----------|-------:|
| User/Stakeholder Need Clarity | 10 |
| Value/Benefit Clarity | 15 |
| Feature Alignment & Traceability | 10 |
| INVEST Compliance | 20 |
| Acceptance Criteria & Testability | 20 |
| Scope & Boundaries | 10 |
| Dependencies, Assumptions & Risks | 5 |
| Definition of Ready / Done Clarity | 10 |
| **Total** | **100** |

### Mandatory Minimum Scores

Each of these must score at least 3/5 regardless of total: Value/Benefit Clarity, Feature Alignment & Traceability, Acceptance Criteria & Testability, Definition of Ready / Done Clarity.

### Readiness Thresholds

| Score | Assessment |
|------:|------------|
| 90–100 | Sprint-Ready |
| 80–89 | Strong |
| 70–79 | Needs Refinement |
| Below 70 | Not Ready |

When reporting a score, always list the specific gaps found per dimension, not just a number.

## Approval Checklist (also embedded in the template)

- [ ] Story Statement follows "As a / I want / So that"
- [ ] Linked to one parent Feature
- [ ] Story Owner and primary user/stakeholder named
- [ ] Primary user/stakeholder checked against stakeholder-register.md (registered or logged per Guardrail 2)
- [ ] Business/user value stated, ideally measurable
- [ ] Acceptance criteria are observable and testable
- [ ] Scope (in/out) documented
- [ ] Dependencies and assumptions identified
- [ ] Passes all six INVEST checks (Guardrail 3)
- [ ] Definition of Ready satisfied before sprint entry (Guardrail 4)
- [ ] Definition of Done satisfied before closure (Guardrail 4)
- [ ] No story statement, scope item, or acceptance-criterion behavior duplicated across sibling stories (Guardrail 5)
- [ ] Clarification markers (if any) number 5 or fewer, and every Open Questions Log entry (if the section exists) has an owner and a target decision date

## Story Litmus Test

Before calling a draft done, confirm a teammate could answer each of these within a minute from the document alone:

1. Who is this for?
2. What do they need?
3. Why does it matter?
4. Which feature does this belong to?
5. How will we know it's done?
6. Could this realistically be finished in one sprint?

If any answer is unclear, the story is not ready — go back and strengthen that section.

## Status Gate

Never set `> **Document status:**` to Approved just because the user asks — this pack uses a Draft → In Review → Approved gate, enforced by [pack-integrity-check](../pack-integrity-check/SKILL.md)'s Status Gate Model. Before approving:
1. Run the Quality Scoring Model above (or `/validate story <id>`) and confirm the score is 90+ (Sprint-Ready), with every Mandatory Minimum Score also met.
2. Confirm every Definition of Ready and Definition of Done checklist item is checked.
3. Confirm zero `[NEEDS CLARIFICATION]` markers remain, and the Open Questions Log (if present) has no item still marked Open.

Only then set status to Approved and replace the template header's `Not recorded` value with `> **Last validated:** <date> — Score <NN>/100 (Sprint-Ready)`. If an existing document has no `Last validated` field, add the evidence line when approving. This lets `check-checklists.ps1` re-verify the claim later. If any of the three conditions fail, say so and keep the status at Draft/In Review instead.
