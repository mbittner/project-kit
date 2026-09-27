# Business User Guide: Working with the Requirements Assistant

*[Lire ce guide en français](business-user-guide-fr.md)*

This guide explains what happens when product managers and product owners use Copilot Chat in this workspace: what to ask, what the assistant checks, what the saved commands do, and where human decisions are still required.

## How the Help Is Organized

| Part | What it does | Value to you |
|---|---|---|
| Workspace instructions | Apply shared conventions such as IDs, bilingual files, parent links, and contents-page coverage | Documents follow the same rules without you having to remember them |
| Artifact guidance | Provides the detailed workflow and quality bar for initiatives, epics, features, stories, and change-management briefs | Keeps each document at the right level and asks for important missing information |
| Specialized assistants | BA Requirements Writer supports drafting; BA Requirements Reviewer gives an independent critique; Lifecycle Navigator recommends a next step | Choose drafting, independent review, or evidence-based next-step guidance |
| Slash commands | Runs repeatable tasks such as proposing child features, validating an artifact, or sharing work | Makes multi-step processes easier to request consistently |
| Integrity scripts | Check facts that can be verified mechanically, such as links, IDs, language pairs, headers, and contents coverage | Catches omissions that are easy to miss in review |
| Registers | Summarize stakeholders and documentation status | Makes ownership, impact, active work, and approved baselines easier to find |

A slash command is a shortcut to a saved workflow. The workflow guidance gives Copilot the domain-specific steps. The scripts are narrower checks; they do not replace business judgment. You can start in normal Copilot Chat for routine drafting, select **BA Requirements Writer** for specialized drafting help, or select **BA Requirements Reviewer** for a separate review that does not change files.
Choose **Lifecycle Navigator** when you are unsure whether to continue discovery, move toward delivery, test an assumption, or involve a specialist. It reads the relevant artifact and gives a read-only recommendation; it does not approve the work or make the decision for you.
The work-management guarantees are documented separately from today's interface and storage. Copilot Chat and the GitHub-backed shared copy are the current choices; changing either does not change what saving or sharing promises.
For a one-page command and artifact reference, see the [Business User Cheat Sheet](business-user-cheat-sheet.md).

## Example: From Idea to Epic

Suppose you are a Product Manager who wants an epic under an existing initiative. Start with a business outcome and the people affected. For example:

> “Draft an epic under <initiative ID> for <business capability>. The intended outcome is <measurable outcome>. Keep the epic focused on one business capability, avoid naming a technical solution, and show assumptions or important questions rather than inventing facts.”

### 1. Copilot checks the context

The `epic-documentation` guidance asks Copilot to confirm the parent initiative, read its outcomes and existing epic portfolio, inspect sibling epics, and identify the next available `EPIC-XXX` ID. Before reading that portfolio or choosing an ID, epic creation automatically follows the `/get-latest` workflow; you do not need to call it manually. If you have unsaved edits, Copilot asks you to save first. It pauses to resolve conflicts and stops to explain if the refresh cannot run. The `check-ids.ps1` script then confirms that an ID is free and that IDs are not duplicated or skipped.

**Value:** The epic starts in the right place in the initiative and is less likely to duplicate an existing capability or collide with someone else's new ID.

### 2. Copilot drafts the epic in both languages

The epic guidance uses the English and French epic templates. It focuses the document on the business problem, users, capability, outcome, success measures, scope, dependencies, risks, assumptions, ownership, and readiness criteria. It avoids detailed feature requirements and technical design, which belong at lower levels.

For a short starting prompt, Copilot can make reasonable structural assumptions, but it must label assumptions and must not invent owners, dates, targets, or stakeholder names. It asks about material unknowns and records unresolved items in the appropriate clarification or open-question section.

**Value:** You get a reviewable first draft without having to assemble the document structure yourself; the English and French versions are created together.

### 3. Stakeholders are checked and documented

The `stakeholder-register-validation` guidance compares named users and impacted groups with the central register. It reuses the established group names, adds a genuinely new group to both register languages, and updates where that group is involved. When a new impacted group is identified, Copilot asks for its Manager and Subject Matter Expert (SME). If either is unknown, it uses “To confirm” and records the specific question in that group's Open Questions section. Names and answers are never guessed.

The `check-stakeholders.ps1` script is a separate, heuristic warning check. It can flag possible unregistered names in stakeholder-bearing sections, but it does not decide whether a match is correct or update the register by itself.

**Value:** The document's users are visible and traceable, and you can see who to consult or what contact information is still missing.

### 4. Scope and overlap are reviewed

The epic guidance checks that the proposal is a business capability at epic level: not so broad that it belongs in the initiative, and not so narrow that it is a feature. It also applies `sibling-overlap-validation` to compare the proposed capability and scope with other epics under the same initiative.

If you are planning several epics, `/decompose-initiative <initiative number>` automatically gets the latest updates before reading the initiative and proposing a coherent, non-overlapping set. After you confirm the candidates, it refreshes again before assigning IDs and creating files. If new updates affect the initiative or proposed set, Copilot revises the proposal and asks you to confirm again.

**Value:** Clear boundaries reduce duplicated work and make the eventual feature breakdown more useful.

### 5. Parent links and contents are updated

When the epic is created, its parent initiative's Epic Portfolio is updated and the English and French table of contents receive matching entries. The epic header links back to its initiative and its change-management brief; related artifacts are cross-linked as they are created.

**Value:** People can navigate between the initiative, epic, features, and change-management material without hunting through folders.

### 6. Features are proposed only when you ask

Once the epic is ready for decomposition, use:

```text
/decompose-epic <epic number>
```

The command reads the epic's outcome, scope, and existing feature list. It proposes features that cover the in-scope work, checks the candidates against one another and existing sibling features, and presents the set for your review. **It does not create feature files until you confirm the proposed set.** After confirmation, the feature workflow creates bilingual feature documents and updates the epic and contents links.

**Value:** You can adjust the shape of the work before it becomes a set of documents and commitments.

### 7. Validate readiness

When the epic is ready for a quality and readiness review, use:

```text
/validate epic <epic number>
```

The validator applies the epic quality model, guardrails, checklist, and approval gate. It reports a score, specific gaps, and whether the epic is eligible for feature discovery. The readiness threshold for an epic is 90/100, with required minimum scores for key dimensions. Validation is read-only unless you explicitly ask for changes.

The workflow also runs relevant integrity checks, including ID integrity, English/French parity, link resolution, stakeholder warnings, header/version consistency, and business-document table-of-contents coverage. A heuristic warning is advisory; Copilot should explain it rather than silently changing the register.

If the epic passes and you ask to approve it, Copilot compares it with its previous approved version when available and proposes a baseline version. If you ask to record the proposal before deciding, a **Pending Baseline Proposal** section is added to both language versions. It does not change `Document version` or the approved-baseline register. Once you confirm approval and the proposed version, the pending section is removed, the version and approval evidence are recorded, and the status register is refreshed.

**Value:** You get a structured readiness decision and actionable fixes. An approval or version change cannot be inferred from a score alone.

### 8. Save, share, and track the work

Use `/save-my-work` to record the current changes and update the register's manually maintained **Active Work** section when a requirement remains in progress. It asks for missing owner and next-action details; unknowns stay “To confirm.” For every meaningful change set, Copilot classifies business and technical changes, updates relevant documentation automatically, and creates a time-stamped release note. The register generator refreshes counts and approved baselines without overwriting Active Work notes.

Use `/share-my-work` when you are ready to share. It gets the latest updates first, explains conflicts for you to resolve, updates documentation for any additional incoming changes, reuses the pending release note or records a distinct delta, and runs integrity checks. It asks before publishing the intended changes to the shared project, verifies success, and reports failures without losing your local work. `/show-history <document ID>` explains a document's change timeline; `/undo-my-last-change` explains what would be lost before asking you to confirm.

**Value:** Work has a visible owner and next action, the approved baseline summary stays consistent with document headers, and changes are traceable.

## Other Useful Commands

| Command | When to use it |
|---|---|
| `/decompose-initiative <initiative number>` | Propose a non-overlapping epic set under an initiative |
| `/decompose-epic <epic number>` | Propose features under an epic; confirm the set before files are created |
| `/decompose-feature <feature number>` | Propose stories under a feature; confirm the set before files are created |
| `/validate epic <epic number>` | Score an epic and check readiness; replace `epic` with the artifact type you are validating |
| `/audit-pack <initiative ID>` | Review an initiative and its descendants, including quality, overlap, KPI traceability, and stakeholder change fatigue |
| `/screen-architecture <type> <number>` | Find out whether an epic or feature needs a Solution Architect before delivery; nothing is changed |
| `/get-latest` | Manually refresh teammate updates for workflows without an automatic freshness check |
| `/save-my-work` / `/share-my-work` | Record work, then review and share it |

## What Still Needs Your Judgment

Copilot can structure, compare, and flag; it cannot approve business decisions for you. Product Managers and Product Owners still confirm the outcome, scope boundaries, user groups, accountable owners, assumptions, targets, and the proposed version. The assistant should surface unknowns, not turn them into facts.

For a separate, read-only second opinion, choose **BA Requirements Reviewer** in Copilot Chat and ask it to review an initiative, epic, feature, story, or change-management brief. It returns prioritized findings; `/validate` remains the structured readiness workflow.