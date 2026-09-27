# Copilot Interface Adapter

## Role

The files under `.github/agents/`, `.github/skills/`, and `.github/prompts/` provide one user interface for the [tool capability contracts](tool-capability-contracts.md). They package instructions for Copilot Chat; they are not the provider-neutral source of the cross-cutting work-lifecycle contract.

The interface delegates storage and collaboration operations to the [current version-control adapter](version-control-adapter.md). It presents confirmations, conflicts, limitations, and results in plain language.

## Current Mapping

| Copilot customization | Responsibility |
|---|---|
| Ideas Register | Captures user-provided suggestions to improve the pack's agents, skills, prompts, scripts, and workflows as numbered, high-level idea records. |
| BA Requirements Writer | Guides authoring and decomposition using artifact-specific practice guidance. |
| BA Requirements Reviewer | Provides a separate, read-only review. |
| Lifecycle Navigator | Provides read-only, evidence-based next-step advice and can be delegated to by the Writer for sequencing questions. |
| Solution Architect Guide | Role-specific guidance for Solution Architects: when to engage, which architecture artifact to use, and the related assistants and commands. |
| Solution Architecture Writer | Drafts Architecture Assessments, ADRs, and Solution Designs under `technical/`, following the [Architecture Decisions contract](tool-capability-contracts.md#architecture-decisions); can delegate to the Navigator and the Architecture Reviewer. |
| Solution Architecture Reviewer | Provides a separate, read-only review of one architecture artifact. |
| `/screen-architecture`, `/record-decision`, `/supersede-decision`, `/design-solution` | Expose architecture screening, decision recording, supersession, and design proposal; all file-creating steps are confirmation-gated. `/validate` also accepts `assessment`, `adr`, and `design`. |
| Architecture skills | `architecture-assessment-documentation`, `adr-documentation`, and `solution-design-documentation` own architecture structure, guardrails, advisory scoring, and status gates; `architecture-screening`, `architecture-decision-consistency`, and `architecture-traceability-validation` are shared checks. |
| System Register guidance | Reconciles project systems in technical documentation with the bilingual System Register and captures owner/CMCD follow-up questions. |
| Artifact and shared validation skills | Package business practice, quality models, and mechanical checks for Copilot workflows. |
| `/save-my-work`, `/share-my-work`, `/get-latest`, `/show-history`, `/undo-my-last-change` | Expose the work-lifecycle capabilities and load the version-history execution guidance. |
| Writer-to-Navigator delegation | Routes only next-step and specialist-involvement questions to a read/search-only advisor; drafting and approval remain separate. |

## Maintenance Rules

- Keep capability outcomes, confirmation rules, and failure guarantees in the provider-neutral contract. Keep provider commands and configuration in the version-control adapter.
- When the user shares an improvement idea for the pack's tooling or workflows, record it in the numbered Ideas Register and link it from the register README. Recording it does not authorize implementation.
- When the user shares an improvement idea for the pack's tooling or workflows, record it in the numbered Ideas Register and link it from the register README. Include a backlink from each idea file to the README. Recording it does not authorize implementation.
- A command or assistant may define its interaction sequence and tool permissions, but must link to the capability contract and must not create a competing version of its semantics.
- Keep next-step advice read-only. The Writer may delegate sequencing questions to the Navigator; the Navigator returns evidence, one recommendation, and an exit condition without editing or approving artifacts.
- When editing project IT/architecture documentation or saving/sharing changes, follow `system-register-validation` to reconcile system references and missing owner/CMCD data.
- Architecture assistants and commands never accept an ADR, recommend an assessment, or approve a design without the Solution Architect's explicit confirmation, and never edit business content beyond an `Architecture references` backlink.
- Keep next-step advice read-only. The Writer may delegate sequencing questions to the Navigator; the Navigator returns evidence, one recommendation, and an exit condition without editing or approving artifacts.
- Save/share-generated release notes follow the contract's UTC timestamp, filename, and unshared-note update rules. Do not create duplicate notes when share reuses an unchanged saved change set.
- A change to user-visible capability behavior updates the contract, the affected Copilot customization, the adapter documentation when implementation details change, and both user-facing READMEs as required by `.github/copilot-instructions.md`.
- Adding another interface does not require changing the contract or the storage adapter if both existing implementations already satisfy it.

## Current Limitation

This is a documented separation of responsibilities, not yet a runtime plugin API. Copilot instructions and the version-control adapter still use repository-local files and shell operations; the contract makes their behavior replaceable without pretending that provider swapping is already automated.