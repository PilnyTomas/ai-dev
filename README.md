# AI Development Standards

Canonical home for reusable technical agent rules, agent roles, and skills.

## Layout

- `tech_skills/agent/rules.md` — shared preservation and agent-scope rules.
- `tech_skills/agent/opencode/` — reusable OpenCode agent roles.
- `tech_skills/agent/standards/` — repository-context guidance.
- `tech_skills/skills/` — reusable procedures.

Consumers can add this repository as a submodule at `.ai/standards/`. The shared
files then live at `.ai/standards/tech_skills/`; each consumer retains its own
repository instructions and context. Review `tech_skills/README.md` before
adopting the technical workflows.
