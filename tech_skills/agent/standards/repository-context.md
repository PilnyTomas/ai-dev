# Repository Context Standard

Every adopted repository carries one target-owned file, `.ai/context.md`, produced by the
initial (expensive) scan and kept current by `context-refresh`.

## Required content

`.ai/context.md` includes relevant answers supported by repository evidence. This is a
checklist, not a form: skip irrelevant items and omit anything that adds no future value.
Do not create empty headings or generic filler. Cover:

1. What the component is and who uses it
2. Build, test, lint, and release commands (confirmed only)
3. Entry points and main runtime flow
4. Architecture: subsystems, boundaries, dependency direction
5. External dependencies and generated artifacts (and their sources)
6. Conventions and habits that nothing checks automatically
7. Known traps where a naive change breaks behavior
8. Hub files and frequently changed files
9. Minimum reading list per task area
10. Owner, lifecycle, data classification, AI-use restrictions

## Rules

- Single file. No project brief, repository map, manifest, or generated adapters.
- Unknown facts are marked `UNCONFIRMED`, never guessed.
- Link existing docs instead of copying them.
- Shared standards are provided by the consumer's configured integration (for
  example, a submodule at `.ai/standards/`). Do not duplicate the shared files
  in repository-specific context.
- Refresh after structural, build, test, or ownership changes.
