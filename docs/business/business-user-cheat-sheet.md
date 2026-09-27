# Business User Cheat Sheet

Use this page as a quick reference. The [Business User Guide](business-user-guide.md) explains the full Initiative-to-Epic workflow; the artifact guidance linked below remains the detailed source for quality and readiness rules.

## Workflow at a Glance

```text
Business outcome
    -> Initiative: why invest and how value will be measured
    -> Epic: what business capability is needed
    -> Feature: what user-visible capability will deliver value
    -> User Story: what a user needs to accomplish and how to test it
    -> Tasks, delivery, release, adoption, and value measurement
```

1. Start with the problem, affected people, desired outcome, and evidence. Record solution ideas as hypotheses until options are assessed.
2. Create an Initiative to establish the business case and outcomes.
3. Decompose an approved Initiative into non-overlapping Epics.
4. Decompose an Epic into valuable Features; confirm the proposed set before files are created.
5. Decompose a Feature into small, testable User Stories; confirm the proposed set before files are created.
6. Validate readiness, resolve open questions, and keep links and English/French copies aligned.
7. Save work locally, then share it when ready. After confirmation, sharing publishes it to the team.

## Copilot Help

| Help | Use it for |
|---|---|
| **BA Requirements Writer** | Drafting, updating, and decomposing business requirements. It follows artifact-specific practice guidance. |
| **BA Requirements Reviewer** | A separate, read-only critique of a named business artifact. It does not edit the document. |
| **Lifecycle Navigator** | A read-only recommendation about what to do next, whether to continue, or when to involve a specialist such as a Solution Architect. It does not approve work or decide for you. |
| Practice guidance | `initiative-documentation`, `epic-documentation`, `feature-documentation`, `user-story-documentation`, and `change-management-documentation` define each artifact's structure, quality criteria, and readiness rules. |
| Shared checks | `sibling-overlap-validation` checks sibling scope; `stakeholder-register-validation` checks stakeholder registration; `pack-integrity-check` runs mechanical repository checks; `version-history` guides saving, sharing, and history workflows. |

## Slash Commands

| Command | What it does |
|---|---|
| `/validate <type> <ID>` | Scores and checks an `initiative`, `epic`, `feature`, `story`, `cm-epic`, or `cm-feature`. Read-only unless you ask for edits. |
| `/decompose-initiative <ID>` | Proposes a non-overlapping Epic set. Confirms the set with you before creating files and refreshes shared changes before assigning IDs. |
| `/decompose-epic <ID>` | Proposes non-overlapping Features under an Epic. Confirms before creating files. |
| `/decompose-feature <ID>` | Proposes User Stories under a Feature. Confirms before creating files. |
| `/audit-pack [initiative ID]` | Checks the whole pack or a named Initiative and its descendants. |
| `/save-my-work [note]` | Updates relevant documentation and registers, creates a timestamped release note for substantive changes, and records the work locally. It does not share it. |
| `/share-my-work` | Gets the latest changes, resolves conflicts, updates relevant documentation, runs checks, summarizes the change set, and asks before publishing it to the team. |
| `/get-latest` | Retrieves teammate changes and summarizes what is new. Epic creation does this automatically. |
| `/show-history [document ID]` | Shows the history of a document, or recent project history when no ID is supplied. |
| `/undo-my-last-change` | Previews what would be lost and asks before undoing a local change. Shared work is not silently erased. |

## Epic

**Question:** What business capability is needed to achieve the Initiative's outcome?

**Include:** the problem or opportunity, users, capability, business outcome, success measures, scope, candidate Features, dependencies, risks, assumptions, and accountable owners.

**Avoid:** vendor or technology choices, architecture decisions, implementation plans, detailed acceptance criteria, and Stories. Keep the Epic solution-neutral and trace it to one Initiative.

**Next:** `/validate epic <ID>` to review readiness; `/decompose-epic <ID>` when ready to discover Features.

**Detailed rules:** [Epic guidance](../../.github/skills/epic-documentation/SKILL.md)

## Feature

**Question:** What specific user-visible capability and outcome will address part of the Epic?

**Include:** primary beneficiary, user/stakeholder need, feature statement, benefit hypothesis, scope, Feature-level acceptance criteria, success measures, quality/compliance needs, dependencies, assumptions, risks, and candidate Stories.

**Avoid:** prescribing a vendor, programming language, storage, infrastructure, API design, or other implementation unless it is an approved constraint. Capture architecture decisions in technical documentation and link them to the Feature.

**Next:** `/validate feature <ID>` to review readiness; `/decompose-feature <ID>` to propose Stories.

**Detailed rules:** [Feature guidance](../../.github/skills/feature-documentation/SKILL.md)

## User Story

**Question:** What does one user need to accomplish, and how will the team know it works?

**Include:** `As a ... I want ... So that ...`, a parent Feature, user value, testable acceptance criteria, story-specific scope, dependencies, assumptions, risks, and Definition of Ready/Done checklists.

**Check:** INVEST (Independent, Negotiable, Valuable, Estimable, Small, Testable). Keep Stories small and focused on behavior, not implementation tasks.

**Next:** `/validate story <ID>` to review readiness. Break implementation activities into Tasks during delivery planning.

**Detailed rules:** [User Story guidance](../../.github/skills/user-story-documentation/SKILL.md)

## Keep in Mind

- Business artifacts describe needs, outcomes, users, and required behavior. Technical documents hold architecture assessments, ADRs, and solution designs.
- Validation findings and Lifecycle Navigator advice inform decisions; they do not approve scope, funding, or architecture.
- `/save-my-work` records locally. `/share-my-work` publishes only after you review the summary and confirm.
- Release notes for save/share use a UTC timestamp to the second. No-op and documentation-only changes do not create a release note.
- The pack is a starting point, not an approved organizational standard. Confirm project-specific policy, owners, measures, and approval authority with the appropriate people.