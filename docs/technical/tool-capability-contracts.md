# Tool Capability Contracts

## Purpose

This document defines the observable behavior of the pack's cross-cutting work-management capabilities. It says what users can rely on, not which assistant, command syntax, hosting service, or storage technology provides it.

The contract is authoritative for save/share/history behavior, approved-baseline semantics, and automatic documentation maintenance. The [Copilot interface](copilot-interface.md) and [version-control adapter](version-control-adapter.md) implement it. Neither implementation may silently redefine it.

Artifact-specific business content remains governed by the applicable requirements practice and approved project decisions. This contract does not replace artifact quality models, templates, or business approval authority.

## Next-Step Guidance

When asked what should happen next, provide decision support, not an approval gate. Determine the likely work stage from available evidence and recommend one smallest useful next action. If the stage or evidence is unclear, ask one focused question.

Use this three-space model as a navigation aid:

- **Problem and outcomes:** establish the problem, affected people, current evidence, desired outcomes, and measures before committing to a solution. Record solution ideas as hypotheses.
- **Options and decisions:** compare feasible options, including process, policy, organizational, data, automation, technology, and doing nothing. Scale investigation to uncertainty, impact, and risk; record consequential decisions and tradeoffs.
- **Delivery and operation:** connect the selected direction to user-visible capabilities, acceptance, testing, deployment, support, adoption, and outcome measures. Use production evidence to revisit earlier assumptions.

The spaces are iterative, not mandatory gates. Evidence may justify continuing, clarifying, testing an assumption, involving a specialist, deciding, deferring, or stopping. Never infer that a document is ready solely from its type, status, or a numeric score.

A recommendation should state the current position, the next action, evidence and rationale, the role best placed to act, and what would count as completion. Offer an alternative when the evidence supports more than one path. Use existing artifact-specific quality models and checks rather than inventing a second scoring system.

Recommend a solution architect when the decision presents material architecture uncertainty or cross-cutting technical risk, such as system integration, data migration or ownership, security/privacy, significant availability/performance/scalability needs, vendor/build-buy choices, or a departure from established architecture. Do not make architecture review a default prerequisite for every feature.

Guidance is read-only: it does not edit artifacts, approve business decisions, commit teams to an option, or assign ownership without evidence.

## Architecture Decisions

Architecture documentation supports business outcomes; it never redefines them.

- **Proportionality:** create an assessment, decision record, or design only when screening shows material architecture uncertainty or risk, or when delivery needs a shared design. "No document needed" is a valid outcome.
- **Recommendation versus decision:** an assessment recommends; a decision record decides. Only the accountable Solution Architect accepts a decision, recommends an assessment, or approves a design, and only with explicit confirmation after the artifact's readiness conditions are met. Quality scores are advisory evidence, never a gate or an approval.
- **Immutability:** an accepted decision's substance is never rewritten. A changed decision is recorded as a new decision that supersedes the old one; both remain, with reciprocal links.
- **Traceability:** every architecture artifact links to at least one business artifact, and linked business artifacts link back. Adding that backlink is the only change architecture work may make to a business document; scope gaps are raised with the Product Owner.
- **Grounded facts:** costs, volumes, service levels, owners, dates, vendor facts, and system identities are never inferred. Unknowns are recorded as `To confirm` with an open question. Systems are cited by their System Register ID.
- **Consistency:** a new decision or design is compared with accepted decisions covering the same systems or scope. Conflicts are presented to the Solution Architect, not resolved silently.
- **Baselines:** Solution Designs follow the Approved Baselines rules below. Assessments and decision records use their own lifecycle status and carry no baseline version.

## Work Lifecycle

| Capability | Contract |
|---|---|
| Save | Review the intended change set, maintain affected documentation, record the change locally, and report what was recorded. Saving alone does not publish work or approve a requirement. |
| Share | Retrieve the latest shared state first; resolve conflicts with the user; maintain documentation and run relevant integrity checks; summarize the complete intended change set; obtain confirmation; publish the intended set; verify publication. Never report success before verification. |
| Get latest | Retrieve shared changes without silently discarding local work. Explain incoming changes and stop for the user's decision when edits conflict. |
| Show history | Report available change history accurately. Distinguish local-only changes from changes known to be shared; do not invent authorship or timestamps. |
| Undo | Preview what would be removed or restored and obtain explicit confirmation before destructive action. Never erase or rewrite shared history; correct shared work with a new change. |

If an operation cannot complete, preserve recoverable local work, explain what did and did not happen, and give the next safe step. A failed or unverified publication is not a successful share.

## Documentation Maintenance

User-provided ideas for improving the pack's own agents, skills, prompts, scripts, or workflows are captured in the Ideas Register under `docs/ideas/`; project business requirements and solution proposals do not belong there. Assign the next unused `IDEA-NNN` ID, write a concise high-level change description, and link it from the register README. Recording an idea does not authorize its implementation.
User-provided ideas for improving the pack's own agents, skills, prompts, scripts, or workflows are captured in the Ideas Register under `docs/ideas/`; project business requirements and solution proposals do not belong there. Assign the next unused `IDEA-NNN` ID, write a concise high-level change description, and link it from the register README. Every idea file links back to that README. Recording an idea does not authorize its implementation.

For each non-empty source change set, classify changes as business, technical, or cross-cutting and update only the documentation those changes warrant:

- Business requirements remain the source of truth. Maintain applicable stakeholder references, parent/child links, bilingual contents pages, and status registers.
- Changes to user-facing workflow or guidance update the business-user guides.
- Changes to tooling, integrations, data, security, deployment, or architecture update the relevant technical documentation.
- Technical system references in solution documentation are reconciled with the bilingual System Register by the [system-register-validation](../../.github/skills/system-register-validation/SKILL.md) guidance on every save/share invocation and whenever technical architecture documentation is edited. Ask the Solution Architect for the system owner and CMCD real name/ID. Hopex is optional. If owner or CMCD data is missing, record `To confirm` and a specific open question in both register versions; do not block the document.
- Every substantive source change set handled by save/share receives one release note summarizing the business and technical changes, supporting documentation, and checks run. Omit empty categories. Record the creation time in UTC to the second in both the filename (`YYYY-MM-DD-HHMMSSZ-<description>.md`) and the note header (`Date/time: YYYY-MM-DD HH:MM:SS UTC`).
- Preserve historical filenames and links. Backfill a historical note's header time only from reliable recorded metadata; if no trustworthy time is available, state that it was not recorded rather than inferring one.
- If save/share materially updates an unshared note with additional source changes, add or refresh `Updated at: YYYY-MM-DD HH:MM:SS UTC` and include the new changes without creating a duplicate note for the same change set. Keep the original timestamp in its filename. Never alter a note for already-shared work.
- When share reuses an unchanged note, preserve its original timestamps. A no-op save/share or a documentation-only maintenance pass does not create a release note.
- Outputs created by this maintenance pass do not recursively trigger another note. Documentation-only changes with no substantive source change do not require a note.

## Approved Baselines

The document's recorded version represents its latest approved baseline, not each saved edit. Saving, sharing, or validation alone never increments that version.

- First approval establishes version `1.0`.
- Editorial-only changes do not increment the version.
- After revalidation and approval, a qualifying requirement change that preserves outcome and scope increments the minor version; a material change to outcome or scope increments the major version.
- An eligible version proposal remains pending until the user confirms it and the approval criteria are met. Keep English and French copies aligned. Never mark a document Approved or change its baseline based on a score alone.

## Conflict and Confirmation Rules

- Explain conflicting edits in plain language and present the alternatives. Ask whether to keep either version or combine them; do not guess.
- Ask before publishing the summarized change set. Integrity findings are advisory and may be accepted by the user, but the confirmation must be explicit.
- Never include unrelated local edits in a save or share operation.
- Never claim that shared state changed unless the selected implementation verifies that outcome.

## Implementation Conformance

Any interface or storage implementation may differ internally, but must satisfy these outcomes and safety rules. When an implementation cannot support a capability, it must state the limitation rather than weakening the contract implicitly.