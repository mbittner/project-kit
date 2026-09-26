---
name: sibling-overlap-validation
description: "Use when checking whether a new or updated Epic, Feature, or User Story overlaps in capability, scope, or behavior with its siblings under the same parent — other epics under the same initiative, other features under the same epic, or other stories under the same feature. Also use for the /validate command when validating an epic, feature, or story. Trigger phrases: does this overlap, duplicate scope, overlapping epics, overlapping features, overlapping stories, sibling epic, sibling feature, sibling story, scope conflict, is this a duplicate, scope creep."
---

# Sibling Overlap Validation

Shared procedure used by the [epic-documentation](../epic-documentation/SKILL.md), [feature-documentation](../feature-documentation/SKILL.md), and [user-story-documentation](../user-story-documentation/SKILL.md) skills to make sure two documents at the same level don't silently claim the same ground. An epic's siblings are the other epics under the same parent initiative; a feature's siblings are the other features under the same parent epic; a story's siblings are the other stories under the same parent feature.

## Procedure

1. **List the siblings.**
   - Epic: read the parent initiative's Epic Portfolio table for every other `EPIC-XXX` under the same `INIT-XXX`.
   - Feature: read the parent epic's Features table for every other `FEAT-XXX` under the same `EPIC-XXX`.
   - Story: read the parent feature's Candidate User Stories list (and any linked `STORY-XXX` documents) for every other story under the same `FEAT-XXX`.
2. **Compare the naming/statement level.**
   - Epic: if two epics' Epic Summary / Capability Statement describe materially the same capability in different words, that's an overlap, not two epics.
   - Feature: if two features' Feature Statement describe materially the same user action/benefit in different words, that's an overlap, not two features.
   - Story: if two stories' Story Statement ("As a / I want / So that") describe materially the same user need in different words, that's an overlap, not two stories.
3. **Compare the detail level.**
   - Epic: flag any In Scope bullet in the draft that also appears (verbatim or materially equivalent) in a sibling epic's In Scope list.
   - Feature: flag any In Scope bullet or acceptance-criterion behavior in the draft that also appears (verbatim or materially equivalent) in a sibling feature.
   - Story: flag any In Scope bullet or acceptance-criterion behavior in the draft that also appears (verbatim or materially equivalent) in a sibling story.
4. **Resolve, don't just flag:**
   - If the overlap is a true duplication, recommend merging the two documents or ask the user which one should own the capability/behavior.
   - If they're related but distinct, tighten both documents' Scope sections with an explicit two-way cross-reference — e.g. `"Out of Scope: <capability/behavior>, owned by [EPIC-YYY](link)"`, `"...owned by [FEAT-YYY](link)"`, or `"...owned by [STORY-YYY](link)"`.
5. **Update the sibling too.** If resolving the overlap requires adding an Out of Scope cross-reference to a sibling document, make that edit as part of the same pass — never leave the boundary one-directional (documented in only one of the two files).

## Validation Questions

- Epic: *If I read every sibling epic's Scope side by side, is there exactly one epic that owns each capability?*
- Feature: *If I read every sibling feature's Scope and acceptance criteria side by side, is there exactly one feature that owns each behavior?*
- Story: *If I read every sibling story's Scope and acceptance criteria side by side, is there exactly one story that owns each behavior?*

## When This Applies

- Creating a new epic, feature, or story (check against existing siblings before finalizing).
- Editing the Scope, Capability Statement, Feature Statement, or Story Statement of an existing epic, feature, or story (a "small tweak" can still introduce an overlap — re-run this check, don't skip it because the edit looks minor).
- Running the `/validate epic <id>`, `/validate feature <id>`, or `/validate story <id>` command.

## Not Used For

Initiatives don't have true siblings in the same sense (each is its own portfolio-level investment), so [initiative-documentation](../initiative-documentation/SKILL.md) does not reference this skill.
