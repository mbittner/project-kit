---
name: architecture-screening
description: "Use to decide whether an Initiative, Epic, or Feature needs Solution Architect involvement and which architecture artifact, if any, is warranted — no involvement, an ADR, an Architecture Assessment, or a Solution Design. Used by /screen-architecture and the Lifecycle Navigator. Trigger phrases: does this need an architect, architecture screening, is architecture review needed, architecturally significant, should we do an ADR, do we need a design."
---

# Architecture Screening

A read-only, evidence-based check that answers one question: **does this business artifact need architecture work now, and if so, what is the smallest useful artifact?** Architecture review is not a default gate. Most Features that follow established patterns need none.

## Screening Triggers

Check the artifact (scope, dependencies, quality and compliance considerations, data, risks, open questions) and its related context for each trigger. Record the evidence found, or "No evidence".

| # | Trigger | Examples of evidence |
|---|---|---|
| T1 | New or changed system integration | A new data exchange with another system, a new API consumer, a new external party |
| T2 | Data ownership, migration, residency, or retention | Moving data between systems, a new system of record, a new retention obligation |
| T3 | Security, privacy, identity, or regulatory impact | New personal data, new user population, new access model, regulated activity |
| T4 | Significant non-functional needs | Availability, performance, scalability, resilience, or accessibility beyond current norms |
| T5 | Vendor, build, or buy choice | Selecting a product, a platform, or a sourcing model |
| T6 | Departure from established architecture or standards | A new technology, a new pattern, an exception to a standard |
| T7 | Costly or hard-to-reverse decision | Long contracts, data model lock-in, broad platform commitments |

## Verdict

| Verdict | When | Recommended next step |
|---|---|---|
| **Not needed** | No trigger has evidence, and the approach follows established patterns | Continue delivery with normal technical review; record any constraints in the Feature |
| **ADR only** | A trigger applies, but there is one obvious option or the options are already understood | Draft an ADR with the Solution Architecture Writer |
| **Assessment** | A trigger applies with material uncertainty between two or more plausible options | Draft an Architecture Assessment, then `/record-decision` |
| **Design** | Direction is decided (Accepted ADRs or established patterns), and delivery needs a shared design because of integration, data, security, or operational complexity | `/design-solution <feature ID>` |
| **Unclear** | Evidence is insufficient to distinguish | Ask one focused question of the Product Owner or Solution Architect |

More than one verdict can apply in sequence (e.g. Assessment, then Design). Report the first step only, with the expected follow-on.

## Also Check Existing Architecture

Before recommending new work, search `technical/` for Accepted ADRs and Approved designs that already cover the systems or scope. Reuse beats duplication. If an existing ADR applies, cite it. If the artifact would contradict it, recommend a superseding ADR.

## Output Format

**Artifact:** <ID and title>

**Trigger findings:** table of T1–T7 with evidence or "No evidence"

**Existing architecture that applies:** <ADR/SD IDs or "None found">

**Verdict:** <Not needed / ADR only / Assessment / Design / Unclear>

**Why:** <evidence-based reasoning>

**Next step and owner:** <one action, role, and command if any>

## Boundaries

Read-only. Do not create or edit files, approve anything, or assign owners without evidence. Distinguish evidence found in the workspace from assumptions.
