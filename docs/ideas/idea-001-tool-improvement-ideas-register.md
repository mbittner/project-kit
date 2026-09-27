# IDEA-001 — Persistent Tooling Improvement Ideas Register

*[Ideas Register index](README.md)*

## High-Level Description

Create a central, numbered register for suggestions to improve the pack's Copilot agents, skills, prompts, scripts, and workflows, so ideas can be recorded and revisited rather than kept in memory.

## Status

Completed on 2026-09-27.

## How It Works

When a user suggests an improvement to the Project Documentation Pack, the suggestion is recorded as a separate idea document under `docs/ideas/`, even when the user does not explicitly ask for it to be saved.

1. Check the register and existing filenames for the next unused sequential ID in the `IDEA-NNN` format.
2. Create one Markdown file for the idea with a concise high-level description.
3. Add a row to [README.md](README.md) so the idea is discoverable from the register index.
4. Add a backlink from the idea document to the register README.
5. Record only the idea supplied by the user. Do not silently expand it into an implementation plan unless the user asks for more detail.
6. Treat recording an idea as separate from approving, scheduling, or implementing the change.

## Scope

The register is for improvements to the pack's Copilot interface, guidance, commands, validation scripts, templates, and workflows. It is not for project business requirements or proposed changes to a project solution.

## Maintenance Rules

- Never reuse an idea ID.
- Keep every idea listed in the register README.
- Keep every idea file linked back to the README.
- Update the idea status when implementation begins or completes.
- Preserve completed ideas for historical traceability rather than deleting them.
