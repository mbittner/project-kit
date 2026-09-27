---
name: architecture-traceability-validation
description: "Use whenever an Architecture Assessment, ADR, or Solution Design is created, linked, or reviewed, to keep links between architecture/ documents and business artifacts (Initiative, Epic, Feature) valid in both directions and to keep the architecture/README.md index current. Trigger phrases: architecture traceability, link design to feature, architecture references, orphan ADR, orphan design, backlink."
---

# Architecture Traceability Validation

The architecture counterpart of [stakeholder-register-validation](../stakeholder-register-validation/SKILL.md). Keeps business requirements and architecture connected without moving technical content into business documents.

## Rules

1. **Every technical artifact links to at least one business artifact.** The `Linked business artifacts` / `Artéfacts d'affaires liés` header links to at least one existing Initiative, Epic, or Feature. The English copy links to English documents, and the French copy to French documents.
2. **Business artifacts link back.** Each linked Epic or Feature lists the technical document in its `Architecture references` / `Références d'architecture` header line, in both language copies. Replace the value `None` / `Aucune` with the first link. Separate further links with `; `. For an Initiative without that header field, add the line after the change management brief row.
3. **Backlink updates are the only edit to business documents.** Do not change their status, version, scope, or any other content. An added link is editorial and does not change the baseline version.
4. **Technical cross-links.** An ADR links to its source assessment, and the assessment's `Resulting decision` links back. A design lists its governing ADRs, and each ADR's Affected Designs section lists the design.
5. **Index.** Each technical artifact has a row in [architecture/README.md](../../../architecture/README.md) and [architecture/README-fr.md](../../../architecture/README-fr.md) with current status.
6. **Systems.** Systems are cited as `SYS-### — Name` and reconciled by [system-register-validation](../system-register-validation/SKILL.md), including rows in the register's Technical References table.

## Procedure

1. Read the target technical document (EN and FR) and each business artifact it links.
2. Apply rules 1–6, fixing missing backlinks and index rows when you are authoring. Report them when you are reviewing.
3. Run `check-arch-traceability.ps1`, `check-system-refs.ps1`, and `check-system-mentions.ps1` from [pack-integrity-check](../pack-integrity-check/SKILL.md) and `check-links.ps1`, then report the findings.

## Boundaries

- Technical documents stay out of the business tables of contents.
- If a linked business artifact does not exist yet, do not create one. Flag it as an open question for the Product Owner.
