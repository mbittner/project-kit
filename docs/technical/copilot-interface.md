# Copilot Interface Adapter

## Role

The files under `.github/agents/`, `.github/skills/`, and `.github/prompts/` provide one user interface for the [tool capability contracts](tool-capability-contracts.md). They package instructions for Copilot Chat; they are not the provider-neutral source of the cross-cutting work-lifecycle contract.

The interface delegates storage and collaboration operations to the [current version-control adapter](version-control-adapter.md). It presents confirmations, conflicts, limitations, and results in plain language.

## Current Mapping

| Copilot customization | Responsibility |
|---|---|
| BA Requirements Writer | Guides authoring and decomposition using artifact-specific practice guidance. |
| BA Requirements Reviewer | Provides a separate, read-only review. |
| Lifecycle Navigator | Provides read-only, evidence-based next-step advice and can be delegated to by the Writer for sequencing questions. |
| Artifact and shared validation skills | Package business practice, quality models, and mechanical checks for Copilot workflows. |
| `/save-my-work`, `/share-my-work`, `/get-latest`, `/show-history`, `/undo-my-last-change` | Expose the work-lifecycle capabilities and load the version-history execution guidance. |
| Writer-to-Navigator delegation | Routes only next-step and specialist-involvement questions to a read/search-only advisor; drafting and approval remain separate. |

## Maintenance Rules

- Keep capability outcomes, confirmation rules, and failure guarantees in the provider-neutral contract. Keep provider commands and configuration in the version-control adapter.
- A command or assistant may define its interaction sequence and tool permissions, but must link to the capability contract and must not create a competing version of its semantics.
- Keep next-step advice read-only. The Writer may delegate sequencing questions to the Navigator; the Navigator returns evidence, one recommendation, and an exit condition without editing or approving artifacts.
- A change to user-visible capability behavior updates the contract, the affected Copilot customization, the adapter documentation when implementation details change, and both user-facing READMEs as required by `.github/copilot-instructions.md`.
- Adding another interface does not require changing the contract or the storage adapter if both existing implementations already satisfy it.

## Current Limitation

This is a documented separation of responsibilities, not yet a runtime plugin API. Copilot instructions and the version-control adapter still use repository-local files and shell operations; the contract makes their behavior replaceable without pretending that provider swapping is already automated.