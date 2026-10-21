---
name: minimal-change
description: Produce the smallest coherent DRY and KISS change satisfying an explicit development goal
compatibility: opencode
metadata:
  opencode/autoinvoke: "true"
---

# Minimal Change Procedure

1. Restate the exact observable outcome internally.
2. Establish explicit allowed write paths.
3. Identify the existing canonical owner of the behavior.
4. Prefer:
   - modifying existing behavior;
   - reusing an existing abstraction;
   - extending an existing test;
   - updating a canonical document.
5. Avoid:
   - unrelated cleanup;
   - opportunistic refactoring;
   - speculative generalization;
   - premature abstraction;
   - duplicate documentation;
   - new dependencies;
   - broad formatting.
6. Keep interfaces unchanged unless the requirement demands otherwise.
7. Review the final diff line by line.
8. Remove every change not necessary for the requested outcome.
