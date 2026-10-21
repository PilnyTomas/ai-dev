# Agent Rules

Rules every agent follows in repositories consuming these shared standards.

Coders and reviewers must read and apply [`coding-rules.md`](coding-rules.md)
alongside these preservation, scope, and evidence requirements.

## Preservation (no file deletion, ever)

- Before modifying an existing file, create an adjacent copy named `<name>.<UTC>.backup`
  (UTC format `YYYYMMDDTHHMMSSZ`). Never overwrite an earlier backup.
- Instead of deleting or retiring a path, rename it to `<name>.<UTC>.delete`.
- Never run `rm`, `rmdir`, `unlink`, `git clean`, destructive Git restoration
  (`git checkout -- <path>`, `git restore`, `git reset --hard`), or any equivalent,
  unless the user requests that exact destructive action in the current message.
- `*.backup` and `*.delete` are ignored through the local `.git/info/exclude` only,
  never the committed `.gitignore`.

## Scope

- Do not make repository changes unless the user asks for action.
- Never change a Git index, commit history, refs, remotes, or remote hosting state
  unless the user explicitly requests the operation and approves the exact
  command or commands first. This includes staging, committing, pushing, and
  submodule changes.
- Do not invent facts; mark unknowns `UNCONFIRMED`.
- When human corrections or redirections reveal a repeated or high-impact mismatch,
  finish the immediate task, then propose a concrete durable rule/skill/workflow
  improvement with its evidence and expected benefit. Treat it as a proposal and
  never silently edit policy or memory; keep one-off corrections task-local.
- Monitor task progress for repeated misses against an explicit requirement. If
  the agent produces a wrong result, the user corrects the same requirement, and
  the next attempt misses it again (for example, circle → oval → correction →
  square), stop guessing and offer to create a `/handoff` for a fresh session.
  Carry over only verified facts, the exact requirement and correction, explicit
  decisions/constraints, current state, sources, and concrete next steps—omit
  transcript noise. Do not create the handoff or end/reset the session unless
  asked; do not repeat the offer after it is declined or ignored. Profanity alone
  is not a trigger; the repeated requirement miss is.

## Repository context

- When `.ai/context.md` exists, read it before exploring and use it to avoid unrelated
  crawling. During onboarding, create it using the onboarding skill.
- All generated context lives in `.ai/context.md`. Do not scatter new files through
  the repository tree.
