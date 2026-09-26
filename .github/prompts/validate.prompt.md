---
description: "Unified validator for this repo's business requirement artifacts. Requires an explicit type argument (initiative, epic, feature, story, cm-epic, or cm-feature) so the artifact type is never guessed from the ID alone. Runs the matching skill's full Guardrails + Quality Scoring Model + Approval/Readiness Checklist (including the pack-integrity-check scripts) and reports a Status Gate verdict. Read-only by default — does not edit the file unless asked."
name: "Validate"
argument-hint: "<type> <id>, e.g. 'epic 003', 'initiative 001', 'feature 011', 'story 004', 'cm-epic 003', 'cm-feature 011'"
agent: "agent"
tools: [read, edit, search, execute]
---
Validate the artifact described by `${input}`, which must be given as `<type> <id>` (e.g. `epic 003`, `feature 011`, `initiative 001`, `story 004`, `cm-epic 003`, `cm-feature 011`).

## Step 0 — Determine the type (mandatory, never guess)

Parse `${input}` for a leading type keyword. Supported types today:

| Type keyword | Artifact | Skill used |
|---|---|---|
| `initiative` | `INIT-XXX` | [initiative-documentation](../skills/initiative-documentation/SKILL.md) |
| `epic` | `EPIC-XXX` | [epic-documentation](../skills/epic-documentation/SKILL.md) |
| `feature` | `FEAT-XXX` | [feature-documentation](../skills/feature-documentation/SKILL.md) |
| `story` | `STORY-XXX` | [user-story-documentation](../skills/user-story-documentation/SKILL.md) |
| `cm-epic` | `CM-EPIC-XXX` | [change-management-documentation](../skills/change-management-documentation/SKILL.md) |
| `cm-feature` | `CM-FEAT-XXX` | [change-management-documentation](../skills/change-management-documentation/SKILL.md) |

If the type is missing, misspelled, or not one of these, **stop and ask the user to specify one of the supported types explicitly.** Do not infer the type from the ID's shape or from context; the type must be stated.

## Steps once the type is known

1. Load the matching skill (from the table above) in full before validating anything — do not rely on memory of its rules.
2. Resolve the target file by ID:
   - `initiative` → `initiative/init-<zero-padded number>-*.md`
   - `epic` → `epics/epic-<zero-padded number>-*.md`
   - `feature` → `features/feat-<zero-padded number>-*.md`
   - `story` → `stories/story-<zero-padded number>-*.md`
   - `cm-epic` → `change-management/cm-epic-<zero-padded number>-*.md`
   - `cm-feature` → `change-management/cm-feat-<zero-padded number>-*.md`

   If no match is found, list the existing IDs for that type and ask which one to validate.
3. Read the target document plus whatever context its guardrails need: parent initiative + sibling epics (for an epic), parent epic + sibling features (for a feature), parent feature + sibling stories (for a story), or the source epic/feature (for a CM brief).
4. Run every Guardrail defined by that skill, using [sibling-overlap-validation](../skills/sibling-overlap-validation/SKILL.md) for the epic/feature/story overlap guardrail and [stakeholder-register-validation](../skills/stakeholder-register-validation/SKILL.md) for any named stakeholder/user/persona.
5. Run the [pack-integrity-check](../skills/pack-integrity-check/SKILL.md) checks `check-ids.ps1`, `check-parity.ps1`, `check-links.ps1`, `check-checklists.ps1`, `check-stakeholders.ps1`, `check-document-headers.ps1`, and `check-toc-coverage.ps1`; fold any findings about this artifact or its immediate family into the relevant guardrail results (ignore unrelated findings elsewhere in the repo).
6. Score the artifact with its skill's Quality Scoring Model / Scorecard (weighted dimensions, mandatory minimums) and determine its Readiness Threshold.
7. Walk its Approval/Readiness Checklist and mark each item satisfied / not satisfied / unclear.
8. Report a structured result:
   - Overall readiness assessment and total score.
   - Per-dimension/criterion score with the specific gap found (not just a number).
   - Any guardrail violations, each with the section, the problem, and a suggested fix.
   - Checklist status.
   - For `cm-epic`/`cm-feature`: an explicit answer to the Golden Review Question.
   - **Status Gate verdict:** whether this document is eligible to be marked Approved right now, per that skill's Status Gate section (score at/above threshold with mandatory minimums met, checklist fully checked, zero `[NEEDS CLARIFICATION]` markers, zero Open items in the Open Questions Log if present).
9. Do **not** edit the artifact or any sibling/parent document — present findings only. If the user explicitly asks to record a pending version proposal after an eligible validation, add or update the `Pending Baseline Proposal` section immediately after the header block in both language copies. Include current approved version, proposed version, change classification, rationale, validation date/score/rating, and `Pending user confirmation`. Do not change `Document version`, status, or the approved-baseline register while the proposal is pending. If the user proposes another valid next version, update the section in both copies. If the user declines without replacing it, remove the proposal section and leave the document In Review. If the user asks to mark it Approved and the verdict was eligible, compare the proposed document with its last approved baseline when available and recommend a version: `1.0` for first approval; a minor increment for requirement changes that preserve outcome and scope; a major increment for a material outcome or scope change; no increment for editorial-only changes. Explain the reason and ask the user to accept the proposal or provide another valid next version. Do not mark Approved or change the version until the user confirms. If the user declines, the change cannot be classified, or the proposed version is invalid, leave it In Review and ask how to proceed. After confirmation, remove any pending proposal section, update both language documents' status, version, and `Last validated` line, then run [generate-documentation-register.ps1](../skills/pack-integrity-check/scripts/generate-documentation-register.ps1) from the workspace root to refresh both registers. Remove the artifact from Active Work only if the user confirms the work is complete. If not eligible, explain why and do not change status or version. If the user asks you to apply other fixes afterward, follow that skill's own Workflow to do so.
