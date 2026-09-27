---
name: change-management-documentation
description: "Use when drafting, reviewing, or quality-scoring a Change Management brief in this repo's change-management/ folder (CM-EPIC-XXX or CM-FEAT-XXX), or when explaining what makes good change management documentation — writing the change summary, impacted stakeholder groups, current/future state, communication and training plans, adoption measures, resistance risks, or readiness/go-live criteria, or assessing whether a brief is ready for go-live. Trigger phrases: new change management brief, cm brief, change readiness, adoption measures, is this change ready, what's a good change management brief, stakeholder impact, training plan, golden review question."
---

# Change Management Documentation

## What Change Management Documentation Is

> Technology changes systems. Projects change processes. **Change Management changes people.**

A Change Management (CM) brief exists to make sure a technically successful delivery doesn't fail on adoption. Every artifact in this pack progressively answers one question:

| Level | Key Question | Where it's captured |
|-------|--------------|----------------------|
| Initiative | Why must people change? | [initiative/](../../../initiative/) — Executive Sponsorship, Strategic Drivers, Impacted Stakeholder Groups, and Adoption Success Measures (include these in the initiative's optional Change Management Plan section) |
| Epic | Who must change? | `CM-EPIC-XXX` brief (this skill) |
| Feature | What must they do differently? | `CM-FEAT-XXX` brief (this skill) |

A technically successful delivery without adoption should be treated as **unsuccessful**. Change Management readiness is a mandatory approval dimension alongside Business Value, Strategic Alignment, Risk, and Delivery Feasibility — not an afterthought bolted on after go-live.

## Where It Lives in This Repo

- Folder: `change-management/`
- Filenames: `cm-epic-XXX-slug.md` (+ `-fr.md`) for one per epic, `cm-feat-XXX-slug.md` (+ `-fr.md`) for one per feature — a 1:1 pairing, not siblings competing for scope (no overlap-check skill needed here).
- Templates to copy from: [templates/cm-epic-template.md](../../../templates/cm-epic-template.md) / [templates/cm-epic-template-fr.md](../../../templates/cm-epic-template-fr.md) for epic-level briefs, [templates/cm-feature-template.md](../../../templates/cm-feature-template.md) / [templates/cm-feature-template-fr.md](../../../templates/cm-feature-template-fr.md) for feature-level briefs.
- Portfolio rollups are optional. On a clean project, do not create project-specific rollups before there are approved requirements; if the project later maintains a bilingual rollup, update it when briefs change.
- Parent artifact: an approved Epic (for `CM-EPIC-XXX`) or approved Feature (for `CM-FEAT-XXX`) — see [epic-documentation](../epic-documentation/SKILL.md) / [feature-documentation](../feature-documentation/SKILL.md) if the source doesn't exist yet.

Follow the repository-wide conventions: zero-padded sequential IDs matching the source artifact's number (`CM-EPIC-003` documents `EPIC-003`), mandatory EN/FR pair, the standard header blockquote linking the source epic/feature and (for feature briefs) the parent CM-EPIC brief.

## Workflow

1. **Clarify scope of the ask.** New CM brief vs. reviewing/scoring an existing one. Confirm the source epic or feature is itself approved/stable enough that its Scope/Business Outcome won't change out from under the brief.
2. **Find the next free `CM-EPIC-XXX` or `CM-FEAT-XXX` ID** — it should match its source artifact's number. Run [pack-integrity-check](../pack-integrity-check/SKILL.md)'s `check-ids.ps1` to confirm.
3. **Copy the matching template** (both EN and FR) — do not invent new section names or skip mandatory sections.
4. **Derive content from the source artifact, don't re-invent it:** Change Summary from the epic's Epic Summary/Hypothesis or the feature's Business Objective/Description; stakeholder groups from the epic's Users/Stakeholders or the feature's Personas; risks partly carried forward from the source artifact's own Risks section, filtered to adoption-relevant ones only (see Guardrail 5).
5. **When working from a short prompt, apply the AI Generation rules below** — use reasonable defaults for structural/process gaps, document every assumption, and cap true unknowns at 5 `[NEEDS CLARIFICATION]` markers (log any overflow in the Open Questions Log). Never invent hard numbers, names, or dates.
6. **Run all five Guardrail checks** (below) as a final pass — before/after explicit, stakeholder/role impact (including the [stakeholder-register-validation](../stakeholder-register-validation/SKILL.md) check), adoption ≠ deployment, training/communication/documentation explicit, and no technical/change-risk conflation — and rewrite anything found.
7. **Run the quality scoring model** (below) against the draft and report the score/rating back to the user before calling it done.
8. **Update cross-links:** confirm the source epic/feature header links back to this brief, and update [table-of-content.md](../../../table-of-content.md)/[table-of-content-fr.md](../../../table-of-content-fr.md) if a link changed. Update a portfolio rollup only if the project maintains one. Run `check-parity.ps1` and `check-links.ps1` after saving.

## Mandatory Sections

### CM-EPIC-XXX (epic-level brief)
Must be completed before an epic's change readiness can be approved for planning.

| # | Section | Purpose — answers "Who must change?" |
|---|---------|----------------------------------------|
| 1 | Change Summary | Plain-language: what's changing, for whom, why |
| 2 | Business Driver | Problem solved, expected value, cost of inaction |
| 3 | Impacted Stakeholder Groups | Who, their role today vs. after, impact severity (High/Medium/Low) |
| 4 | Nature of the Change | Process, tool/system, role/responsibility, policy/rule changes |
| 5 | Change Impact Assessment | Current vs. future state across process, tools, roles/skills, volume/workload |
| 6 | Communication Plan | Audience, message, channel, timing, owner |
| 7 | Training and Enablement Needs | Roles needing training, format, owner, target date |
| 8 | Resistance Risks and Mitigations | Adoption-specific risks (not technical risks — see Guardrail 5) |
| 9 | Readiness and Go-Live Criteria | Checklist confirming change readiness at go-live |
| 10 | Adoption and Benefits Measurement | Adoption rate, time-to-proficiency, support ticket volume — rolled up to epic/initiative measures |
| 11 | Approval Checklist | Final sign-off gate |

### CM-FEAT-XXX (feature-level brief)
Must be completed before a feature's change readiness can be approved for go-live — answers "What must they do differently?"

| # | Section | Purpose |
|---|---------|---------|
| 1 | Change Summary | What this feature changes in daily work |
| 2 | Who Is Affected | Persona, current use, future use, impact severity |
| 3 | Before / After Journey | Step-by-step current vs. future behavior |
| 4 | What's Changing in Practice | New steps, removed/automated steps, new rules, new information required |
| 5 | Training and Job Aids Needed | Quick-reference, walkthrough, in-app guidance, FAQ |
| 6 | Local Champions / SME Support | Named champions, office hours, escalation path |
| 7 | Adoption Measures | Usage rate, first-pass success, error rate, satisfaction |
| 8 | Risks and Mitigations | Adoption-specific risks, not technical ones |
| 9 | Readiness Checklist | Final go-live gate |

**Conditional section — Open Questions Log:** only needed when there are unresolved items beyond the 5 capped `[NEEDS CLARIFICATION]` markers (see AI Generation below).

## Guardrail 1: Before/After Must Be Explicit

Never leave the current state or the future state implied. Treat as a violation:
- A Change Summary or Change Impact Assessment that describes only the future state, without naming what people do *today*.
- Vague future-state language ("the process will be more efficient") instead of concrete behavior ("brokers upload documents through the portal instead of emailing them").

**Fix:** state both sides explicitly, in the same table/row, so a reader can see the delta at a glance (this is exactly what the Change Impact Assessment / Before-After Journey tables are for — don't collapse them into prose).

## Guardrail 2: Stakeholder and Role Impact Mandatory

- Every impacted stakeholder group must be named specifically — reject vague terms like "users", "business", "operations" (per the source pattern's own convention); require role-level specificity ("Operations Analysts", "Brokers", "Plan Sponsor Administrators").
- Every stakeholder group needs an assessed impact severity (High/Medium/Low) — don't assume every group is equally impacted.
- Role changes must be concrete: what does this role do differently, not just "impacted."
- Check every named group against [stakeholder-register.md](../../../stakeholder-register.md) per [stakeholder-register-validation](../stakeholder-register-validation/SKILL.md) — use the register's existing wording, add this brief to its "Where They're Involved" column, and register any group that's missing (or log it if genuinely unresolved).

## Guardrail 3: Success ≠ Deployment — Adoption Metrics Are Mandatory

- "Released", "deployed", "live in production" are delivery milestones, not adoption evidence. Every CM brief needs at least one adoption/behavioral measure (adoption rate, usage rate, time-to-proficiency, support ticket volume, error/exception rate) with a baseline and target — deployment alone never satisfies this guardrail.
- Deployment is not adoption — never let a Readiness/Go-Live Criteria checklist consist only of technical/delivery items; at least one item must be about people being ready (trained, briefed, supported), not just the system being ready.

## Guardrail 4: Training, Communication, and Documentation Must Be Explicit

- Training requirements must not be deferred to "figure out later" — format, target roles, owner, and target date must be stated (or explicitly "Not applicable" with a reason) before the brief is considered ready.
- Communication needs (audience, message, channel, timing, owner) must be stated per audience — a single generic "communicate the change" line is a violation.
- Documentation updates (SOPs, work instructions, process maps, knowledge base) must be identified when the change affects a documented process, not silently assumed to update themselves.

## Guardrail 5: Don't Conflate Technical Risk With Change Risk

These are different risk categories and must not be merged into one Risks table without distinction:
- **Technical risk** example: "System performance issues", "integration failure."
- **Change risk** example: "User resistance", "adoption drop-off", "loss of familiar workaround."

A CM brief's Risks/Resistance section should carry forward *only* the change-relevant risks from the source epic/feature's own Risks section — filter out purely technical risks (those stay in the source artifact, not here).

## For AI Generation (Drafting From a Short Prompt)

1. **Make informed guesses.** Use the source epic/feature's content plus standard group-insurance/industry change-management patterns to fill structural gaps.
2. **Document assumptions.** Every guess goes into the brief's own narrative (there's no separate Assumptions section in this template — state assumptions inline where the guess is made, e.g., "Training format: instructor-led (assumed based on similar past rollouts) — to confirm").
3. **Limit clarifications to a maximum of 5.** Use an inline `[NEEDS CLARIFICATION: <question>]` marker only for decisions both (a) impossible to reasonably default and (b) material enough to change the shape of the change plan.
4. **Prioritize which unknowns earn a marker**, in this order: **stakeholder identification/registration** (is every impacted group named and in the register?) > **executive sponsor / accountable change owner** > **stakeholder impact severity** > **adoption measure definition** > **training/communication logistics**. Everything past the top 1–5 becomes an Open Questions Log entry (Question | Why It Matters | Decision Needed By | Suggested Owner | Status) instead.
5. **Think like an operations manager, not a drafter.** Before finishing, run the brief against the Golden Review Question below.
6. **Common areas needing clarification** (raise only if no reasonable default fits): who the accountable change sponsor is, a go-live/cutover date that changes the communication timeline, or whether an old process/tool is being retired vs. running in parallel.

### Examples of Reasonable Defaults (don't ask about these)

- **Adoption baselines/targets not yet measured:** state as "To confirm" / "To approve", matching the pack's convention.
- **Standard resistance risks:** default to the illustrative set already in the templates (loss of familiar workaround, perceived loss of control, adoption drop-off after go-live) tailored to the specific change.
- **Standard readiness checklist items:** reuse the template's own Readiness/Go-Live Criteria list as the starting point.

## Do's

- Clearly identify stakeholder groups by name/role, not vague categories.
- Explain why the change is needed with a compelling, specific business rationale.
- Define expected behavioral changes concretely (before → after).
- Define measurable adoption outcomes, not just delivery milestones.
- Document current state and future state explicitly, at epic and feature level.
- Assess stakeholder impact severity — different groups experience different levels of change.
- Specify training, communication, and documentation needs before they're needed, not after go-live.
- Disclose organizational impacts honestly, including difficult ones.

## Don'ts

- Don't assume users will automatically adopt — deployment is not adoption (Guardrail 3).
- Don't focus only on technology — always connect functionality to human behavior.
- Don't hide or minimize significant role, process, or workload changes.
- Don't use vague stakeholder descriptions ("users", "business", "operations") — be specific (Guardrail 2).
- Don't ignore or bury change/resistance risks — they should be visible from the start, and never merged with technical risks (Guardrail 5).
- Don't leave future-state processes ambiguous.
- Don't postpone training analysis to "later" — identify it during epic/feature definition (Guardrail 4).
- Don't scatter `[NEEDS CLARIFICATION]` markers everywhere — cap at 5, prioritized sponsor/owner > stakeholder impact > adoption metrics > training/communication logistics; anything below that bar becomes an Open Questions Log entry.

## Quality Scoring Model

Score out of 100 using the weighted criteria for the artifact level, 0–5 per criterion (0=Missing, 1=Very Weak, 2=Weak, 3=Acceptable, 4=Strong, 5=Excellent), scaled to its weight.

### CM-EPIC-XXX Scorecard

| Criterion | Weight |
|-----------|-------:|
| Current State Defined | 20 |
| Future State Defined | 20 |
| Stakeholder Impact Assessment | 20 |
| Process Changes Identified | 15 |
| Adoption Risks Defined | 15 |
| Adoption Metrics Defined | 10 |
| **Total** | **100** |

### CM-FEAT-XXX Scorecard

| Criterion | Weight |
|-----------|-------:|
| User Behaviour Changes Defined | 25 |
| Role Changes Defined | 20 |
| Process Changes Defined | 20 |
| Training Impacts Defined | 15 |
| Communications Identified | 10 |
| Documentation Updates Identified | 10 |
| **Total** | **100** |

### Mandatory Minimum Scores

Regardless of total score, these must each be at least 3/5: Stakeholder Impact Assessment (epic) / Role Changes Defined (feature), and Adoption Risks/Metrics Defined (epic) / Training Impacts Defined (feature).

### Readiness Thresholds

| Score | Assessment |
|------:|------------|
| 90–100 | Go-Live Ready |
| 80–89 | Strong |
| 70–79 | Needs Refinement Before Go-Live |
| Below 70 | Not Ready |

When reporting a score, always list the specific gaps found per criterion, not just a number.

## Approval Checklist (also embedded in the template)

- [ ] Change sponsor named
- [ ] Stakeholder impact assessment reviewed (all groups named specifically, severity assessed)
- [ ] All named stakeholder groups checked against [stakeholder-register.md](../../../stakeholder-register.md) (registered or logged per Guardrail 2)
- [ ] Current state and future state both documented (Guardrail 1)
- [ ] Communication and training plans approved, with owners and dates (Guardrail 4)
- [ ] Documentation updates identified where applicable (Guardrail 4)
- [ ] Adoption measures and owners agreed — not deployment milestones (Guardrail 3)
- [ ] Change/resistance risks are distinct from technical risks, and have mitigations (Guardrail 5)
- [ ] Clarification markers (if any) number 5 or fewer, and every Open Questions Log entry (if the section exists) has an owner and a target decision date

## Golden Review Question

> If the technology were deployed tomorrow, would users know what to do differently on Monday morning?

If the answer is **No**, the brief is missing critical change management information — go back and strengthen the relevant section before calling it done.

## Status Gate

Never set `> **Document status:**` to Approved just because the user asks — this pack uses a Draft → In Review → Approved gate, enforced by [pack-integrity-check](../pack-integrity-check/SKILL.md)'s Status Gate Model. Before approving:
1. Run the Quality Scoring Model above and confirm the score is 90+ (Go-Live Ready), with mandatory minimums met.
2. Confirm every Approval/Readiness Checklist item is checked.
3. Confirm zero `[NEEDS CLARIFICATION]` markers remain, and the Open Questions Log (if present) has no item still marked Open.

Only then set status to Approved and replace the template header's `Not recorded` value with `> **Last validated:** <date> — Score <NN>/100 (Go-Live Ready)`. If an existing document has no `Last validated` field, add the evidence line when approving. This lets `check-checklists.ps1` re-verify the claim later. If any of the three conditions fail, say so and keep the status at Draft/In Review instead.
