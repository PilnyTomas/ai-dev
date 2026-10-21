---
description: Create a fresh-agent-ready handoff from this conversation and the verified repository state.
---

Create or update a concise handoff for the next agent, using the `handoff` skill workflow. Treat the full conversation and current repository state as sources; inspect relevant instructions and files before writing. Do not implement the underlying work.

Capture, when applicable:
- The user's goal, constraints, corrections, and what was explicitly agreed.
- Decisions made, including the reason and who made them; keep proposals distinct from user-approved decisions.
- What was completed, the files changed, and the current working-tree state.
- What remains unresolved and prioritized, concrete next actions, and how the next agent should resume.
- Relevant files, paths, commands, logs, documentation, links, or other evidence as sources. Label claims as verified facts, user decisions, assumptions, or open questions; never invent sources or verification results.

Follow the skill's destination, safety, verification, and reporting rules. If the user supplied extra instructions, honor them: $ARGUMENTS
