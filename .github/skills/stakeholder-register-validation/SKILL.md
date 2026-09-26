---
name: stakeholder-register-validation
description: "Use when checking whether stakeholders, personas, users, or impacted groups named in an Initiative, Epic, Feature, User Story, or Change Management brief are tracked in the central stakeholder register, or identifying a group's Manager or Subject Matter Expert (SME) — trigger phrases: is this stakeholder registered, add to the stakeholder register, who owns this stakeholder, who is the group manager, who is the SME, register this team, unregistered stakeholder, stakeholder not identified."
---

# Stakeholder Register Validation

Shared procedure used by [initiative-documentation](../initiative-documentation/SKILL.md), [epic-documentation](../epic-documentation/SKILL.md), [feature-documentation](../feature-documentation/SKILL.md), [user-story-documentation](../user-story-documentation/SKILL.md), and [change-management-documentation](../change-management-documentation/SKILL.md) to make sure every stakeholder named in a document is tracked centrally in [stakeholder-register.md](../../../stakeholder-register.md), instead of being defined ad hoc and forgotten.

**This is not a blocking guardrail.** Never refuse to finish or approve a document solely because a stakeholder isn't registered yet — identifying stakeholders is high-priority, but the fix is always available (register them or log the gap), never a hard stop.

## Two Kinds of Entries

- **Governance & Delivery Roles** — named individuals (Executive Sponsor, Business Owner, Product Manager, Product Owner, Business Analyst, Architect, etc.). Real names are expected here (or "To confirm" if not yet known).
- **Impacted Stakeholder Groups** — teams/roles *affected by* the change (e.g., "Plan Sponsor Administrator", "Operations Manager"). Identify the group by its role/team name; record its Manager and Subject Matter Expert (SME) as representative contacts in that group's detailed profile.

## Procedure

Whenever drafting or reviewing a document that names a stakeholder — Ownership tables, Stakeholders/Users sections, Personas, Primary User/Stakeholder, Impacted Stakeholder Groups, or Who Is Affected:

1. **Check the register first.** Read [stakeholder-register.md](../../../stakeholder-register.md) (or [stakeholder-register-fr.md](../../../stakeholder-register-fr.md) for French-specific naming) before writing a stakeholder into the document.
2. **If they're already registered:** use the same name/wording the register uses (don't introduce a slightly different label for the same group), and add this document to their "Where They're Involved" column (with an impact level, if the document tracks one).
3. **If they're not registered yet:**
   - If you have enough information (a real role/team and a clear description), **add them to the register right now** as part of the same edit — don't leave it for later.
   - If genuinely unresolved (e.g., "which team owns this downstream process" is unclear), **log it as a high-priority item** — either a `[NEEDS CLARIFICATION]` marker (if it meets that skill's priority bar) or an Open Questions Log entry. Never silently leave a stakeholder undefined in prose with no trace anywhere.
4. **Confirm group representatives.** Whenever a new or newly discovered impacted group is identified, explicitly ask the user who represents it as Manager and Subject Matter Expert (SME). Add both contacts to the group's detailed profile. Do not guess. If either contact is not known or the user cannot provide it, mark that field "To confirm" and add a specific question for the missing contact under that group's **Open Questions** subsection. If only one contact is missing, ask and record only that open question.
5. **Keep group identity separate from contact names.** The Impacted Stakeholder Groups entry remains the team/role name; named Manager and SME contacts belong only in that group's profile. Never put a team/role name in Governance & Delivery Roles — keep the two separated per the register's own structure.
6. **Update the register's own EN/FR pair together**, same as any other document.

## Priority

Across every artifact skill's AI Generation rules, stakeholder identification sits at the **top of the clarification-priority order** — ahead of or tied with scope boundary — because an unidentified stakeholder is one of the easiest things to silently miss, and one of the most consequential to miss. If a draft has to choose which of several unknowns earns one of its capped `[NEEDS CLARIFICATION]` markers, "who is this actually for/who does this affect" should usually win.

## When This Applies

- Creating any new Initiative, Epic, Feature, User Story, or Change Management brief.
- Editing an existing document's Ownership, Stakeholders, Users, Personas, or Impacted Stakeholder Groups content — even a small tweak (e.g., adding one more affected team) should trigger an update to the register.
- Running `/validate <type> <id>` — the corresponding skill's Guardrail check should flag any named stakeholder not found in the register (as a warning, not a failure).
- Running `/audit-pack` — see its Impact Rollup & Change-Fatigue section, which reads the register's backlinks to compute portfolio-wide exposure per stakeholder group.
