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

For each non-empty source change set, classify changes as business, technical, or cross-cutting and update only the documentation those changes warrant:

- Business requirements remain the source of truth. Maintain applicable stakeholder references, parent/child links, bilingual contents pages, and status registers.
- Changes to user-facing workflow or guidance update the business-user guides.
- Changes to tooling, integrations, data, security, deployment, or architecture update the relevant technical documentation.
- Every substantive source change set receives one dated release note summarizing the business and technical changes, supporting documentation, and checks run. Omit empty categories.
- Reuse an unshared note when a save is followed by share. Include newly received changes without duplicating the note. Never alter a note for already-shared work.
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