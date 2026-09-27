# Repository Instructions

## Keep Capability Contracts Separate From Implementations

- [Tool Capability Contracts](../docs/technical/tool-capability-contracts.md) are the provider-neutral source of behavior for cross-cutting work lifecycle, versioning, and automatic documentation maintenance.
- The `.github/` assistants, guidance files, and commands are the Copilot interface. They should refer to the contracts rather than duplicate or redefine them.
- [Version-Control Adapter](../docs/technical/version-control-adapter.md) records current storage and collaboration mechanics; [Copilot Interface Adapter](../docs/technical/copilot-interface.md) records how this interface maps to the contracts.
- A behavior change updates the contract and affected interface; an implementation change updates its adapter and the solution architecture. Update both README languages for user-visible behavior changes as described above.
- Artifact-specific business quality models remain governed by their practice guidance and templates; do not move provider mechanics into those rules.

## Keep the READMEs in Sync With Meta-Tooling Changes

Whenever you add, modify, or remove anything under `.github/agents/`, `.github/skills/`, or `.github/prompts/` in this repository, you must also update [README.md](../README.md) and [README-fr.md](../README-fr.md) in the same pass so the user-facing documentation never goes stale. Specifically:

- **Commands table:** add, update, or remove the relevant row in the "Useful Commands" / "Commandes utiles" table whenever a slash command is added, renamed, merged, or removed.
- **Workflow description:** update the "How to Use This" / "Comment utiliser cet outil" section (and "The Big Picture" / "La vue d'ensemble" if the document hierarchy itself changes) whenever the overall capability or behavior changes — new artifact type, new guardrail category visible to the end result, new status-gate rule, etc.
- **Layman's terms only:** never use the words "agent," "skill," or "prompt" as technical jargon in the READMEs — describe capabilities in plain, outcome-focused language, consistent with the rest of the README (e.g., "checks your document and gives it a score," not "runs the epic-documentation skill's Quality Scoring Model"). Slash commands can be called "commands."
- **Both languages together:** update `README.md` and `README-fr.md` in the same pass — never let one drift out of sync with the other.
- **Verify before finishing:** run `check-parity.ps1` and `check-links.ps1` (see the `pack-integrity-check` skill) after editing to confirm the EN/FR pair still matches and no links broke.

This applies to every meta-level change, not just brand-new artifact-type skills — guardrail additions, renamed or merged commands, new deterministic checks, and folder/structure changes all count if they change what an end user sees or can do.

## Keep the Tables of Contents Complete for Business Documents

Whenever you create, rename, move, or remove a business-facing requirements, governance, stakeholder, or documentation-status document, update both root-level [table-of-content.md](../table-of-content.md) and [table-of-content-fr.md](../table-of-content-fr.md) in the same pass.

- Add each business document to the appropriate section and include its English/French counterpart. Keep parent/child and change-management links current.
- Apply this rule to existing artifact types and any new business-facing document type, regardless of its folder. The stakeholder and documentation-status registers belong in the Registers section.
- Apply this rule to existing artifact types and any new business-facing document type, regardless of its folder. The stakeholder, documentation-status, and System Registers belong in the Registers section.
- Do not add technical documentation, implementation notes, tooling guides, or release notes to these tables of contents. The root-level System Register is the register exception and belongs in the Registers section; other technical material remains excluded. The coverage check excludes `.github/`, `templates/`, `docs/`, `technical/`, `technical-docs/`, `technical-documentation/`, and `implementation/` from business-document indexing.
- Remove or update stale entries when a business document is moved, renamed, or removed.
- Run `check-parity.ps1` and `check-links.ps1` after changes to confirm the bilingual tables match and links resolve.
- Run `check-parity.ps1`, `check-links.ps1`, `check-toc-coverage.ps1`, and `check-document-headers.ps1` after changes to confirm the bilingual tables match, business documents are indexed, and links and version headers are valid.

## Keep the System Register Current

- When creating, editing, or reviewing project technical/architecture documentation, use [system-register-validation](skills/system-register-validation/SKILL.md) to reconcile system references with the bilingual [System Register](../system-register.md) and [French register](../system-register-fr.md).
- `/save-my-work` and `/share-my-work` must run this scan on every invocation against the complete current or pending technical change set, including incoming changes. If there are no relevant technical documents or candidate systems, report that no system-register update was needed.
- Ask the Solution Architect for the system owner and CMCD real name/ID. Hopex is optional. If owner or CMCD information is not supplied, mark it `To confirm` and add a specific open question to both register versions; do not block the technical documentation or guess.

## Keep Architecture Documentation Traceable

- Project architecture work lives under `technical/`: Architecture Assessments in `assessments/` (`ARCH-XXX`), ADRs in `decisions/` (`ADR-XXX`), and Solution Designs in `designs/` (`SD-XXX`). Draft them from the matching `templates/` pair and skill; every document ships as an EN/FR pair.
- Whenever one is created, renamed, or changes status, update the [architecture index](../technical/README.md) and its [French index](../technical/README-fr.md), and add the `Architecture references` backlink to each linked Epic or Feature in both languages, per [architecture-traceability-validation](skills/architecture-traceability-validation/SKILL.md). The backlink is the only permitted edit to a business document.
- Only the Solution Architect can accept an ADR, recommend an assessment, or approve a design, and only after the status gate passes. Architecture quality scores are advisory and never block status. Never edit the substance of an Accepted ADR; supersede it.
- Solution Designs carry baseline versions and appear in the documentation registers; run `generate-documentation-register.ps1` after a design's status or version changes.
- Run `check-adr-chain.ps1`, `check-arch-traceability.ps1`, `check-system-refs.ps1`, and the advisory `check-system-mentions.ps1` alongside the parity and link checks after architecture changes.

## Keep the Ideas Register Current

- When the user shares an idea to improve this pack's agents, skills, prompts, scripts, or workflows, record it in the [Ideas Register](../docs/ideas/README.md), even if they do not explicitly ask to save it. Do not use this register for business requirements or changes to a project solution.
- Assign the next unused `IDEA-NNN` ID after checking the register and existing filenames. Never reuse an ID. Create one idea file with a concise high-level description and add a linked row to the README index.
- Assign the next unused `IDEA-NNN` ID after checking the register and existing filenames. Never reuse an ID. Create one idea file with a concise high-level description and add a linked row to the README index. Every idea file must link back to that README.
- Record only the idea the user supplied; do not invent details or implement it unless the user separately asks for implementation.
