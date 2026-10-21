# Technical Skills

Software and firmware repository workflows and the shared instructions they
use. Consumers typically add this repository as a submodule at
`.ai/standards/`, making this collection available at
`.ai/standards/tech_skills/`.

## Active files

| File | Purpose |
|---|---|
| [agent/rules.md](agent/rules.md) | Shared preservation, scope, and evidence rules |
| [agent/coding-rules.md](agent/coding-rules.md) | Canonical coding principles for implementers and reviewers |
| [agent/standards/repository-context.md](agent/standards/repository-context.md) | Checklist for useful repository-specific context |
| [agent/opencode/](agent/opencode/) | Reusable development and review agents |
| [skills/](skills/) | Reusable repository discovery, change, review, onboarding, refresh, and handoff workflows |

Consumers retain repository-specific `AGENTS.md` and context. Shared rules and
skills supplement those instructions; they do not replace them. Use
`skills/repository-onboarding/SKILL.md` only when the consumer owner explicitly
requests onboarding. Use `skills/context-refresh/SKILL.md` when requested after
meaningful repository changes.

## Install OpenCode agents and skills

Run `agent/install-opencode-agents.sh <target-repository>` to copy the reusable
OpenCode agents, skills, and commands into that repository. The script refuses
to overwrite existing destinations. Review the resulting files and
repository-specific instructions before use.

## Preservation

Files are not deleted by these workflows. See [agent/rules.md](agent/rules.md).
