# AI Development Standards

This repository is the canonical home for shared agent rules, reusable agent
roles, and skills. It is designed to be consumed by other repositories as a Git
submodule, commonly at `.ai/standards/`.

## Rule zero: Git writes require explicit command approval

Never run a command that changes a Git index, commit history, refs, remotes, or
GitHub state unless the user explicitly requests the Git operation and approves
the exact command or commands first. This includes `git add`, `git commit`,
`git push`, `git submodule add`, and GitHub CLI write operations. File edits and
copying files are not Git writes; report them without staging.

## Rules

- Follow `tech_skills/agent/rules.md` before changing repository files.
- Preserve existing user work and inspect status before edits.
- Back up existing files before modifying them, as required by the shared rules.
- Never stage or make Git or GitHub changes without explicit user request and
  approval of the exact commands.
- `tech_skills/` is the reviewed software/firmware policy and workflow collection.
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
- Do not embed project-specific rules in this shared repository. Consumers keep
  their own `AGENTS.md` and repository context.
