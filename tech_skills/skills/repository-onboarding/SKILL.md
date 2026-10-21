---
name: repository-onboarding
description: Run a one-time target-repository scan that produces .ai/context.md. Use only when explicitly requested by the target repository's owner.
---

# Repository Onboarding

Run in the **target repository** only when explicitly requested. Result: a
scan-derived `.ai/context.md` and, if needed, an `AGENTS.md` pointer. Do not
install, update, or duplicate the shared standards as part of onboarding.

Your task is NOT to change source code, build files, or CI.

## Hard rules

- Follow `.ai/standards/tech_skills/agent/rules.md` from the shared standards
  integration.
  Never delete anything; back up before modifying (`<name>.<UTC>.backup`) and
  rename instead of removing (`<name>.<UTC>.delete`).
- Add `*.backup` and `*.delete` to the target's local `.git/info/exclude`, not its
  committed `.gitignore`. Back up `.git/info/exclude` before editing it.
- Never change Git state unless the user requests the operation and approves the
  exact command. Do not stage, commit, or push as part of onboarding.
- Do not invent facts. Use `UNCONFIRMED`.
- Create or modify only `AGENTS.md` and `.ai/context.md`, except the required
  local Git exclude patterns above.

## Procedure

1. Inspect the target root and Git status. Do not overwrite existing files. Inventory
   existing docs (README, docs/, existing `AGENTS.md` or similar); reference them instead
   of duplicating them.
2. Deep scan: build system, structure, entry points, tests, CI, dependencies, generated
   code, `git log` hot spots. This is the expensive step; spend effort here.
3. Use `.ai/standards/tech_skills/agent/standards/repository-context.md` as a
   checklist,
   not a form: skip irrelevant items, link existing documentation, use one-line pointers
   for facts found in one file, and explain only costly-to-recover findings.
4. Write `.ai/context.md` (single file; if it exists, back it up first).
5. If `AGENTS.md` exists, back it up, then append a short pointer without changing its
   existing content. If it does not exist, create it. The pointer says to read
   `.ai/context.md` and follow project/workspace rules before work.
6. Self-review: omit boilerplate, verify every factual claim against the repository.

## Final report (in chat)

- Size estimate, major subsystems
- Files created/modified
- `UNCONFIRMED` items needing a human
- Which part of the context saves the most future tokens, and why
