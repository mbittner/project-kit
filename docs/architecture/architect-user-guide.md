# Architect User Guide: Working with the Architecture Assistant

*[Lire ce guide en français](architect-user-guide-fr.md)*

This guide explains what happens when a Solution Architect uses Copilot Chat in this workspace: what to ask, what the assistant checks, what the saved commands do, and where your decisions are still required. For a reference summary of when to engage and which document to use, see the [Solution Architect Guide](solution-architect-guide.md).

## How the Help Is Organized

| Part | What it does | Value to you |
|---|---|---|
| Workspace instructions | Apply shared conventions such as IDs, bilingual files, the architecture index, and links back to business documents | Architecture documents follow the same rules without you having to remember them |
| Architecture guidance | Provides the workflow and quality bar for assessments, decision records, and solution designs, plus shared checks for screening, decision consistency, and traceability | Keeps each document proportionate and asks for the facts that matter |
| Specialized assistants | Solution Architecture Writer drafts; Solution Architecture Reviewer gives an independent critique; Lifecycle Navigator recommends a next step | Choose drafting, independent review, or evidence-based next-step guidance |
| Slash commands | Run repeatable tasks such as screening a Feature, recording a decision, or proposing a design | Makes multi-step processes easier to request consistently |
| Integrity scripts | Check what can be verified mechanically: IDs, language pairs, links, headers, decision chains, traceability, and system references | Catches omissions that are easy to miss in review |
| Registers | The [architecture index](../../architecture/README.md), the [System Register](../../system-register.md), and the [Documentation Status Register](../../documentation-register.md) | Makes decisions, systems, and approved design baselines easy to find |

Select **Solution Architecture Writer** in Copilot Chat for drafting, or **Solution Architecture Reviewer** for a separate review that does not change files. Choose **Lifecycle Navigator** when you are unsure whether architecture work is needed at all. None of them accept a decision or approve a design on your behalf.

## Example: From Feature to Accepted Decision and Design

*The IDs, systems, and details below are placeholders for illustration.*

Suppose a Product Owner has drafted `FEAT-011`, which lets advisors attach supporting documents to a client file. The documents must end up in an existing records system and include personal information. The Product Owner asks whether you need to be involved.

### 1. Copilot checks whether you are needed

```text
/screen-architecture feature 011
```

The `architecture-screening` guidance reads the Feature, its parent Epic, its `Architecture references`, the architecture index, and the System Register. It checks seven triggers (integration, data, security/privacy, non-functional needs, build/buy, departure from standards, and irreversibility) and records the evidence for each. Here it finds a new integration and personal data, and no existing decision that covers them. Its verdict is *Assessment*, with you as the next owner. Nothing is changed.

**Value:** You engage only when there is real architecture risk, and you see the evidence rather than a bare opinion. A "Not needed" verdict is just as useful: delivery continues without waiting for you.

### 2. Copilot drafts the assessment in both languages

Ask Solution Architecture Writer:

> "Draft an architecture assessment for FEAT-011: how should attached documents reach the records system? Include doing nothing as an option and don't invent volumes or costs."

The Writer gets the latest shared changes, confirms the next free ID (`ARCH-001`) with `check-ids.ps1`, and copies the English and French assessment templates. It fills in the decision question, the Feature's outcomes and constraints, the evidence gaps, at least two genuine options (including the current manual process), evaluation criteria traced to the Feature, and a tradeoff table covering business fit, integration and data, security and privacy, quality attributes, operations, cost and complexity, delivery risk, and reversibility. Unknown volumes and service levels are marked `To confirm`, and at most five questions are flagged inline; the rest go to the Open Questions Log.

**Value:** You get a structured, bilingual first draft that compares real options without presenting guesses as facts.

### 3. Systems are checked and registered

The `system-register-validation` guidance compares each system named in the assessment with the System Register. For the records system, which is not yet registered, Copilot asks you for its owner and CMCD name/ID, and optionally a Hopex reference. It assigns the next `SYS-###` ID and records the system in both register languages. If you don't know the owner or CMCD details yet, it records `To confirm` and adds a specific open question assigned to you; your work is not blocked. `check-system-refs.ps1` confirms that every cited system is registered and cross-referenced, and `check-system-mentions.ps1` warns when a system is named without its ID, whether it is a registered system cited by name only or a possible unregistered system.

**Value:** Systems are named consistently across all architecture documents, and missing ownership information stays visible until it is resolved.

### 4. Links and the index are updated

The assessment's header links to `FEAT-011`, and `FEAT-011` gets a link back to `ARCH-001` under `Architecture references` in both languages. This backlink is the only change architecture work makes to a business document. The assessment is also added to the English and French architecture index. `check-arch-traceability.ps1` confirms the links in both directions and the index entries.

**Value:** The Product Owner can see the architecture work linked to their Feature, and you can see which business outcome each document serves, without technical content leaking into the business requirement.

### 5. Validate and recommend

```text
/validate assessment 001
```

The validator applies the assessment's guardrails (no foregone conclusion, a recommendation is not a decision, grounded in business outcomes, no invented facts, proportionality), scores it, and lists the specific gaps. **The score is advisory and never blocks a status change.** The gate depends on a complete checklist, no unresolved clarification markers, and no open questions. When those conditions are met and you confirm, the status becomes `Recommended`. For a second opinion first, choose **Solution Architecture Reviewer**.

**Value:** You get concrete improvement points and a clear readiness signal, and the status reflects your judgment rather than a number.

### 6. Record the decision

```text
/record-decision 001
```

The command proposes the decision record's content from the assessment: the decision, context, options, rationale, consequences (including negative ones), related systems, and a review trigger. It checks the proposal against earlier accepted decisions for conflicts or duplicates. **It does not create files until you confirm.** It then creates `ADR-001` in both languages as `Proposed` and asks whether you want to accept it. Only when the gate passes and you explicitly confirm does it become `Accepted`, with today's date. `ARCH-001` is then `Closed` and linked to the decision, and `check-adr-chain.ps1` verifies the decision's owner, date, and links.

**Value:** The decision, its rationale, and its costs are recorded once, linked to the evidence, and cannot be accepted without you.

### 7. Design the solution

```text
/design-solution 011
```

The command reads the Feature, its governing decision, and the System Register, and checks whether an existing design already covers the work. It proposes a right-sized outline: what the design covers, the governing decision, the systems involved, which sections need depth and which are likely "Not applicable", and open questions. **It does not create files until you confirm.** It then creates `SD-001` in both languages as a Draft. If the design uncovers a scope gap, for example what happens to documents that fail a virus scan, the gap is sent to the Product Owner as an open question; the Feature is not changed.

**Value:** The design is only as detailed as the risk requires, and business scope stays with the Product Owner.

### 8. Approve the design and set its baseline

```text
/validate design 001
```

The validator checks traceability, boundaries, interfaces and data, security, privacy, non-functional requirements with verification methods, deployment and operations, and consistency with the governing decision. It reports an advisory score and the gaps. When the gate passes and you ask to approve, Copilot proposes baseline version `1.0` and waits for your confirmation. The design then appears in the Documentation Status Register with its approved version.

**Value:** Delivery teams know exactly which version of the design is approved, and later changes follow the same versioning rules as business requirements.

### 9. Change a decision later

If new evidence changes the approach, do not edit the accepted decision. Use:

```text
/supersede-decision 001
```

The command asks what changed, drafts a new decision that references the old one, and lists the designs that name the old decision so you can plan their revision. When you accept the new decision, the old one becomes `Superseded`, and both records link to each other.

**Value:** The history of why each decision was made is preserved, and nothing silently contradicts an accepted decision.

### 10. Save, share, and track the work

Use `/save-my-work` to record your changes locally. It checks every technical change against the System Register, updates related documentation, creates a time-stamped release note, and records a concise outcome-oriented commit subject with the full summary in the commit body. Use `/share-my-work` when you are ready to share: it gets the latest updates first, explains conflicts for you to resolve, runs all integrity checks, including the architecture checks, and publishes only after you confirm. `/audit-pack` includes an architecture coverage section that shows Features that may need you, conflicting decisions, orphan documents, and open System Register questions.

**Value:** Architecture work is traceable, shared safely, and visible across the portfolio.

## Other Useful Commands

| Command | When to use it |
|---|---|
| `/screen-architecture <type> <number>` | Decide whether an initiative, epic, or feature needs architecture work |
| `/validate assessment\|adr\|design <number>` | Score an architecture document and check its status gate |
| `/record-decision <assessment number>` | Turn a Recommended assessment into a proposed decision record |
| `/supersede-decision <ADR number>` | Replace an accepted decision while keeping the original |
| `/design-solution <feature number>` | Propose and create a right-sized solution design |
| `/audit-pack [initiative ID]` | Review architecture coverage alongside business quality |
| `/save-my-work` / `/share-my-work` | Record your work, then review and share it |

## What Still Needs Your Judgment

Copilot can structure, compare, check, and flag; it cannot make architecture decisions for you.

- **Only you** accept a decision, recommend an assessment, or approve a design, and only after you explicitly confirm.
- **You supply the facts** that must not be guessed: system owners, CMCD names and IDs, costs, volumes, service levels, vendor terms, and dates. Hopex references are optional; the pack has no Hopex connection.
- **You judge proportionality.** Concluding that no document is needed is a valid outcome.
- **Scope stays with the Product Owner.** Raise gaps; do not redefine the Feature in a design.

For a separate, read-only second opinion, choose **Solution Architecture Reviewer** and ask it to review an assessment, decision record, or design. It returns prioritized findings; `/validate` remains the structured readiness workflow.
