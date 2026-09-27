# Release Notes - Descriptive Save Commit Messages

Date/time: 2026-09-27 17:00:10 UTC

## Summary

Implemented descriptive local save commit messages for `/save-my-work`.

## Technical changes

- Added a `<scope>: <outcome>` subject convention for local save commits.
- Included artifact IDs in subjects when clearly available, without inventing IDs.
- Added `pack:` as the fallback scope for mixed change sets.
- Kept the complete grouped save summary as the commit body.
- Documented the behavior in the provider-neutral contract, version-control adapter, save prompt, technical workflow map, business guides, architect guides, and both root READMEs.
- Marked IDEA-004 as implemented.

## Examples

- `epic: add EPIC-001 advisor self-service claims intake`
- `architecture: rename technical artifact home to architecture`
- `pack: add Solution Architect toolkit and validation guidance`

## Checks

- Link check passed.
- English/French parity check passed.
- Diff whitespace check passed.
- System Register validation remains required for every save/share invocation; this documentation change adds no project system.
