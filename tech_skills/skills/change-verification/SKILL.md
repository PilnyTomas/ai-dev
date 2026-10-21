---
name: change-verification
description: Verify a software or firmware diff before presenting it for review
compatibility: opencode
metadata:
  opencode/autoinvoke: "true"
---

# Change Verification

Run the narrowest applicable verification.

Always:

1. Inspect `git status --short`.
2. Inspect the complete diff.
3. Run `git diff --check`.
4. Confirm every changed path is allowed.
5. Check for temporary, backup, generated, and debug files.

Where applicable:

- compile changed targets;
- run focused unit tests;
- run relevant integration tests;
- run static analysis;
- run format checks;
- validate schemas and configuration;
- validate documentation links and references;
- check firmware image size and memory use;
- check target-specific compiler warnings;
- check concurrency and resource-lifetime behavior.

Report exact commands and results.

Never claim successful verification for a command that was not run.
Never hide failures.
