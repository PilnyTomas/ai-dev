---
name: repository-discovery
description: Locate authoritative requirements and the minimum files relevant to a software or firmware task
compatibility: opencode
metadata:
  opencode/autoinvoke: "true"
---

# Repository Discovery

Use this procedure before proposing or making changes.

1. Read the applicable AGENTS.md.
2. Identify the target Git repository.
3. Read repository maps, indexes, manifests, and directly referenced documents.
4. Search for exact domain terms, identifiers, interfaces, and existing tests.
5. Locate:
   - authoritative requirements;
   - existing implementation;
   - owners of relevant data and behavior;
   - existing tests;
   - build and verification commands.
6. Follow references rather than recursively loading the repository.
7. Exclude:
   - .git;
   - dependency caches;
   - generated output;
   - build directories;
   - backup files;
   - large unrelated artifacts.
8. Do not infer missing concepts from naming or common architecture.
9. If authoritative information is absent, report the gap.

Return:

TARGET REPOSITORY
AUTHORITATIVE SOURCES
RELEVANT IMPLEMENTATION
RELEVANT TESTS
EXPECTED WRITE PATHS
SPECIFICATION GAPS
