# Version-Control Adapter: Current Implementation

## Role

This document describes how the current workspace implements the [tool capability contracts](tool-capability-contracts.md) for local history and collaboration. It is an implementation note, not the source of the user-visible behavior contract.

The current implementation uses local Git history and a GitHub-hosted shared remote. The configured remote and upstream branch are authoritative at runtime; command guidance must not assume a remote name or silently target a different project. This workspace currently uses `main` as its shared line of work.

## Operation Mapping

| Capability | Current implementation |
|---|---|
| Save | Run `git add <intended paths>` and create a local commit with a concise `<scope>: <outcome>` subject plus the full human-readable summary as the commit body. This records a local commit; it does not publish it. |
| Get latest | Run `git fetch <configured remote>` and integrate its upstream changes. Stop for user input on conflicts; do not discard local edits. |
| Share | After latest-state integration and explicit confirmation, create a local commit only if needed, then run `git push <configured remote> <shared branch>` and verify the result. Never force-push. |
| Show history | Use `git log` and related read-only status/history commands to distinguish local changes from published changes. |
| Undo | Preview affected files and history state first. Use `git restore` only for confirmed local-only edits; use a new corrective commit (`git revert`) for already-shared changes. Never rewrite published history. |

The command mapping in practical terms is:

```text
/save-my-work  -> git add <intended paths> -> git commit -m "<scope>: <outcome>" -m "<full summary>"  (local only)
/share-my-work -> retrieve/integrate latest -> confirm -> git push <remote> <branch>
```

Save commit subjects should identify the main outcome at a glance. Use an artifact ID when available, for example `epic: add EPIC-001 advisor self-service claims intake`; use `pack:` for a mixed change set when no single artifact scope dominates. Avoid generic subjects such as `save changes` or `update files`.

If `/save-my-work` already created the local commit, `/share-my-work` must not create a duplicate; it publishes that commit with `git push`. If additional intended changes arrived, record those changes once before publishing the pending commits.

## Failure and Credential Handling

- If the remote or upstream branch is absent or ambiguous, stop and explain the setup needed. Do not invent a target or change remote configuration.
- If the upstream has advanced or publication is rejected, preserve local commits, explain that the changes were not shared, and guide the user through retrieving and reconciling the latest state before retrying.
- If authentication requires a secret, the user enters it directly in the terminal. Never request, read back, or include credentials in chat.
- Verify publication using the operation result and the resulting upstream state. A local commit alone is not evidence of a successful share.

## Replacing This Adapter

A different provider can replace this implementation without changing the capability contracts. The replacement must map each supported operation to its own storage and collaboration mechanisms, retain the confirmation and recovery rules, and verify successful publication. Update this document and the architecture map when the active implementation changes; do not rewrite the neutral contract to fit provider-specific limitations.

## Optional Wiki Publication

Wiki navigation is not part of the work-lifecycle contract. If a future deployment publishes through an Azure DevOps wiki and the destination uses `.order` files, keep those navigation rules in that provider's adapter documentation. Do not create `.order` files unless that deployment already uses them.