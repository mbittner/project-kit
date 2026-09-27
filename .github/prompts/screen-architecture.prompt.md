---
description: "Read-only architecture screening for an Initiative, Epic, or Feature: checks the architecture triggers, looks for existing Accepted ADRs and designs that already apply, and recommends whether architecture work is needed and the smallest useful artifact (none, ADR, assessment, or design). Does not edit files."
name: "Screen Architecture"
argument-hint: "<type> <id>, e.g. 'feature 011', 'epic 003', 'initiative 001'"
agent: "agent"
tools: [read, search]
---
Screen the business artifact described by `${input}`, given as `<type> <id>` where type is `initiative`, `epic`, or `feature`. If the type is missing or unsupported, ask the user to specify one. Do not guess it from the ID.

## Steps

1. Load [architecture-screening](../skills/architecture-screening/SKILL.md) in full.
2. Resolve the file (`initiative/init-<nnn>-*.md`, `epics/epic-<nnn>-*.md`, or `features/feat-<nnn>-*.md`). If there is no match, list the existing IDs for that type and ask which one to screen.
3. Read the artifact, its parent, its `Architecture references` header, the [architecture index](../../architecture/README.md), and the [System Register](../../system-register.md).
4. Evaluate triggers T1–T7 with evidence and check for existing Accepted ADRs and Approved designs that apply.
5. Report using the skill's output format: trigger findings, existing architecture, verdict, reasoning, and one next step with its owner and command (Solution Architecture Writer for an ADR or assessment, `/design-solution` for a design).
6. Do not create or edit any file.
