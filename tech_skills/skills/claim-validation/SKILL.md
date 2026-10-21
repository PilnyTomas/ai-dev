---
name: claim-validation
description: Validate technical and architectural claims against authoritative repository evidence
compatibility: opencode
metadata:
  opencode/autoinvoke: "true"
---

# Claim Validation

For each changed factual claim:

1. Identify the subject.
2. Verify the subject exists.
3. Verify the claimed behavior, responsibility, ownership, relationship,
   dependency, range, timing, unit, interface, or side effect.
4. Record the authoritative source.
5. Reject the claim when no authoritative source exists and the current task
   does not explicitly introduce it.
6. Do not use:
   - plausibility;
   - common architecture;
   - previous agent output;
   - naming conventions;
   - implementation convenience;
   - text newly added by the same change
   as independent evidence.
