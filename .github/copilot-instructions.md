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
- Do not add technical documentation, implementation notes, tooling guides, or release notes to these tables of contents.
- Do not add technical documentation, implementation notes, tooling guides, or release notes to these tables of contents. The coverage check excludes `.github/`, `templates/`, `docs/`, `technical/`, `technical-docs/`, `technical-documentation/`, and `implementation/`; keep technical material in those locations and index business documents elsewhere.
- Remove or update stale entries when a business document is moved, renamed, or removed.
- Run `check-parity.ps1` and `check-links.ps1` after changes to confirm the bilingual tables match and links resolve.
- Run `check-parity.ps1`, `check-links.ps1`, `check-toc-coverage.ps1`, and `check-document-headers.ps1` after changes to confirm the bilingual tables match, business documents are indexed, and links and version headers are valid.
