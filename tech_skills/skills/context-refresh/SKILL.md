---
name: context-refresh
description: Reconcile a target repository's .ai/context.md with current code after structural changes or repeated agent misunderstandings, without redoing the full scan.
---

# Context Refresh

Run in the **target repository** after build, structure, test, ownership, or dependency
changes. Cheaper than onboarding: it updates the existing scan incrementally.

Your task is NOT to change source code.

## Hard rules

- Obey `.ai/standards/tech_skills/agent/rules.md` (no deletion; backup before modify).
- Modify only `.ai/context.md` and an appended context pointer in `AGENTS.md`. If
  `AGENTS.md` needs editing, back it up first and preserve all existing text.
- Never change Git state unless the user requests the operation and approves the
  exact command. Do not stage, commit, or push as part of context refresh.
- Do not modify the shared standards as part of refreshing target context.
- Do not invent facts. Use `UNCONFIRMED`.

## Procedure

1. Read `AGENTS.md` and `.ai/context.md`. If the context file is absent or untracked, stop
   and run repository onboarding instead.
2. Find the last commit touching `.ai/context.md`; review structural changes since
   (`git log`, `git diff --stat`): modules, build/test, entry points, dependencies, CI. If
   there is no commit history, report that and compare available repository evidence.
3. Verify each claim against the repository; correct stale claims without deleting files.
4. Add knowledge that is now expensive to rediscover.
5. Replace redundant or resolved text in `.ai/context.md` with the useful current fact;
   do not delete files or create additional context files.
6. Back up `.ai/context.md` before writing. Report which statements were replaced.

## Final report (in chat)

- Statements corrected or replaced, and why
- Sections added
- Remaining `UNCONFIRMED` items
- Changed areas not yet covered
