# Release Notes - Architecture Folder Rename

Date/time: 2026-09-27 16:54:47 UTC

## Summary

Renamed the root architecture-artifact home from `technical/` to `architecture/` so the folder name clearly reflects its contents. The `docs/technical/` folder remains the home for tooling contracts, adapters, implementation guidance, and release notes.

## Documentation changes

- Renamed the bilingual architecture index from `technical/` to `architecture/`.
- Updated English and French README references, architecture guides, agent guidance, prompts, skills, and technical documentation to use the new architecture-artifact path.
- Preserved `docs/technical/` links for provider-neutral contracts, adapters, and implementation documentation.
- Updated the TOC coverage check so root architecture artifacts remain outside the business-document indexes.

## Validation

- Relative-link check passed.
- English/French parity check passed.
- Architecture traceability check passed.
- TOC coverage check passed.
- System Register references and advisory system-mention scans require no reconciliation.
