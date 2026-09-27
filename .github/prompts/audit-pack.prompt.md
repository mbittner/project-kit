---
description: "Run a full portfolio-wide health audit: the pack-integrity-check scripts (EN/FR parity, ID gaps, broken links, unchecked Approved checklists, possible unregistered stakeholders) plus guardrail and quality-score validation for every existing initiative, epic, and feature, a full sibling-overlap sweep, a KPI traceability rollup check, a stakeholder impact rollup with change-fatigue detection, and an architecture coverage check (screening, ADR consistency, orphan technical documents, open System Register questions). Produces one consolidated report. Read-only by default — does not edit files unless asked."
name: "Audit Pack"
argument-hint: "Optional: an initiative ID to scope the audit to it and its descendants (e.g. INIT-001) — omit to audit the entire pack"
agent: "agent"
tools: [read, search, execute]
---
Run a portfolio-wide audit, scoped to the initiative given in `${input}` (and its child epics/features) if provided, or the entire pack if `${input}` is empty.

## Steps

1. Load [initiative-documentation](../skills/initiative-documentation/SKILL.md), [epic-documentation](../skills/epic-documentation/SKILL.md), [feature-documentation](../skills/feature-documentation/SKILL.md), [sibling-overlap-validation](../skills/sibling-overlap-validation/SKILL.md), [stakeholder-register-validation](../skills/stakeholder-register-validation/SKILL.md), and [pack-integrity-check](../skills/pack-integrity-check/SKILL.md) in full before auditing anything.
2. Determine scope:
   - If an initiative ID is given, resolve it, then read its Epic Portfolio table for the in-scope epics, and each of those epics' Features table for the in-scope features.
   - Otherwise, scope = every file in `initiative/`, `epics/`, and `features/` (English files; treat each EN/FR pair as one artifact).
3. **Repository mechanics.** Run all ten pack-integrity-check scripts (`check-parity.ps1`, `check-ids.ps1`, `check-links.ps1`, `check-checklists.ps1`, `check-stakeholders.ps1`, `check-document-headers.ps1`, `check-toc-coverage.ps1`, `check-adr-chain.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`) and keep the raw findings — filter to in-scope artifacts if the audit was scoped to one initiative, otherwise keep everything.
4. **Per-artifact validation.** For every in-scope initiative, epic, and feature, run the equivalent of `/validate initiative <id>`, `/validate epic <id>`, or `/validate feature <id>` (its skill's Guardrails + Quality Scoring Model) and record: total score, readiness rating, count of guardrail violations (with a one-line summary each), and count of unresolved `[NEEDS CLARIFICATION]` markers.
5. **Full sibling-overlap sweep.** Unlike the sibling-overlap-validation skill's normal "check this one new/edited document against its siblings" usage, here run it exhaustively: compare every epic under the same initiative against every other epic under that initiative, and every feature under the same epic against every other feature under that epic — not just the one artifact a user happens to be editing.
6. **KPI traceability rollup check.** For each in-scope initiative:
   - Confirm every child epic's Business Outcome plausibly rolls up to at least one initiative Desired Outcome / Success Metric — flag any epic whose outcome doesn't map to anything in the initiative.
   - Confirm every feature's Success Measures plausibly rolls up to its parent epic's Success Metrics — flag any feature KPI that appears disconnected from the epic it belongs to.
   - Flag any KPI (at any level) with no owner named, and any epic/feature with no parent link at all (orphans).
7. **Stakeholder impact rollup and change-fatigue detection.** Read [stakeholder-register.md](../../stakeholder-register.md), then for each in-scope initiative/epic:
   - For every group in the register's Impacted Stakeholder Groups section, aggregate every in-scope artifact (initiative, epic, feature, and matching `change-management/` CM-EPIC-XXX/CM-FEAT-XXX brief) where that group appears, along with its recorded impact level (High/Medium/Low) and status (Draft/In Review/Approved).
   - For each group, also aggregate any training/communication asks named for them across those documents (e.g., from Guardrail 4 of change-management-documentation), so the report can call out where similar asks could be consolidated instead of repeated.
   - **Flag a change-fatigue risk** whenever a stakeholder group has Medium or High impact in **3 or more concurrently active** artifacts (status is Draft or In Review — not yet Approved/live) at the same time. For each flagged group, suggest a concrete action: sequencing the rollouts further apart, consolidating training/communication into a single combined session, or confirming the cumulative load with the group's sponsor before proceeding.
   - Flag any stakeholder mentioned in a document but not found in the register at all (cross-check against `check-stakeholders.ps1`'s output) as a registration gap, not a change-fatigue risk.
8. **Architecture coverage.** Load [architecture-screening](../skills/architecture-screening/SKILL.md) and [architecture-decision-consistency](../skills/architecture-decision-consistency/SKILL.md). For every in-scope epic and feature:
   - Screen it. Flag any with a verdict other than "Not needed" that has no linked assessment, ADR, or design in its `Architecture references`.
   - List every linked technical artifact with its status, and its advisory score from the matching skill (assessment, ADR, or design).
   - Across `technical/decisions/`, report conflicting or duplicate Accepted ADRs, designs governed by Superseded or Deprecated ADRs, and technical artifacts linked to no in-scope business artifact.
   - From the [System Register](../../system-register.md), list systems with `To confirm` owner or CMCD values and open questions still Open.
9. Produce one consolidated report with these sections:
   - **Repository mechanics** — raw script findings, or "clean" if none.
   - **Scorecard** — one table per artifact type: ID | Title | Score | Rating | Guardrail violations | Open clarification markers.
   - **Overlap findings** — any sibling pairs that overlap, with the specific capability/behavior in conflict.
   - **Traceability gaps** — disconnected outcomes/KPIs, missing owners, orphaned artifacts.
   - **Stakeholder impact rollup** — one table per impacted group: Group | Artifacts (with impact level and status) | Change-fatigue flag (Yes/No) | Suggested action (if flagged) | Registration gaps found.
   - **Architecture coverage** — unscreened or uncovered epics/features, technical artifact status and advisory scores, decision conflicts, orphan technical artifacts, and outstanding System Register questions.
   - **Top priority fixes** — the 5–10 highest-impact issues across all of the above, ranked by how many downstream artifacts they affect.
10. Do **not** edit any document — this is a reporting pass only. If the user asks you to fix specific findings afterward, do them one artifact at a time using that artifact's own skill workflow, not in bulk without confirmation.
