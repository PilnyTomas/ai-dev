---
name: handoff
description: Create a verified, fresh-agent-ready handoff from the current conversation and repository state; use when asked for /handoff, a handoff, context transfer, or next-agent summary.
compatibility: opencode
---

# Agent Handoff

Create or update a concise, actionable handoff so another agent can continue without repeating discovery or contradicting decisions. Use the full conversation and the active repository as evidence. Do not implement the underlying task.

## Workflow

1. Read applicable global, repository, and directory instructions.
2. Inspect only relevant files and status needed to verify work, decisions, and next steps. Preserve all existing staged, unstaged, and untracked work.
3. Reconstruct task-relevant user intent chronologically: goal, constraints, corrections, examples, rejected interpretations, agreements, and decisions. Identify who made each decision; an assistant proposal is not agreed unless the user accepted it.
4. Separate verified facts, explicit user decisions, assumptions, and open questions. Do not invent details or sources.
5. Record completed work and why, changed paths and working-tree state, exact verification performed and results, unresolved issues, prioritized next actions, and how to resume. Point the next agent to the first files or sources to inspect.
6. Keep it compact but retain information that prevents repeated mistakes. Link or name authoritative files, commands, logs, docs, and URLs; distinguish inspected evidence from conversation-only claims.
7. Create or update only the requested handoff. Default to `IMPLEMENTATION_HANDOFF.md` at the repository root. In a non-repository context, ask for a destination. Do not modify application code, tests, requirements, or unrelated documentation.
8. Re-read the handoff and verify its claims. Report the path and verification performed.

## Suggested sections

Use only useful sections; omit empty ones:

```markdown
# Implementation Handoff

## Goal And Constraints
## Agreements And Decisions
## Current State
## Completed Work
## Open Questions And Risks
## Next Steps
## Sources And Files To Inspect
## Verification
## Suggested Rule Improvements
```

## Accuracy and safety

- Preserve exact paths, identifiers, commands, and results when verified.
- Make correction and agreement history explicit where it affects continuation.
- Never claim verification that was not run; say `not run` when relevant.
- Preserve `MM` staged/unstaged distinctions and other dangerous state.
- Do not stage, commit, restore, reset, or overwrite unrelated work.
- Do not add speculative fixes or requirements.
