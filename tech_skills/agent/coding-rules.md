# Coding Rules

Priority when principles conflict: **Correctness > Readability/Simplicity > Everything else.**
Format: `ABBREV – Name`: instruction.

## Simplicity & Scope
- **KISS – Keep It Simple**: Choose the simplest solution that meets the requirement.
- **YAGNI – You Aren't Gonna Need It**: Do not add features, parameters, or abstractions that nobody asked for.
- **R3 – Rule of Three**: Abstract only after the third repetition, never after the first or second.
- **POE – Premature Optimization is Evil**: Make it correct and readable first. Optimize only with measurements.
- **POLA – Least Astonishment**: Make code behave the way a reader would expect.
- **MD – Minimal Diff**: Change only what the task requires, with no drive-by refactors or reformatting.
- **BSR – Boy Scout Rule**: Leave the code you touch slightly cleaner, within the scope of the task.

## Duplication & Clarity
- **DRY – Don't Repeat Yourself**: Keep each piece of knowledge in one authoritative place.
- **SSOT – Single Source of Truth**: Define each config value, constant, and schema once, and reference it everywhere else.
- **ROC – Readability Over Cleverness**: Write code for the next reader, not for brevity.
- **NAME – Meaningful Naming**: Use names that reveal intent. Avoid abbreviations and generic names such as `data`, `tmp`, and `handle`.
- **WHY – Comment the Why**: Comments explain reasons and constraints, not what the code does.
- **NMN – No Magic Numbers**: Replace literals with named constants.
- **CON – Consistency**: Match the naming, structure, and style already used in the codebase.

## Structure & Design
- **ORTH – Orthogonality**: Make components independent so that changing one does not force changes in unrelated ones.
- **DEC – Decoupling**: Minimize dependencies between modules and depend on narrow interfaces.
- **COH – High Cohesion**: Keep related logic together and unrelated logic apart.
- **SoC – Separation of Concerns**: Keep UI, business logic, and data access separate.
- **SRP – Single Responsibility**: Give each module, class, and function one reason to change.
- **OCP – Open/Closed**: Extend behavior by adding code, not by modifying stable code.
- **LSP – Liskov Substitution**: Make subtypes usable wherever the base type is expected.
- **ISP – Interface Segregation**: Prefer several small interfaces to one large one.
- **DIP – Dependency Inversion**: Depend on abstractions, not concrete implementations.
- **DI – Dependency Injection**: Pass dependencies in. Do not hard-code or construct them internally.
- **LoD – Law of Demeter**: Make a module talk only to its direct collaborators, with no `a.b().c().d()` chains.
- **TDA – Tell, Don't Ask**: Tell objects what to do instead of pulling out their state and deciding externally.
- **CoI – Composition over Inheritance**: Combine small parts rather than building deep hierarchies.
- **ENC – Encapsulation**: Hide internals and expose a minimal public API.
- **DbC – Design by Contract**: Make preconditions, postconditions, and invariants explicit.
- **CQS – Command-Query Separation**: Make a function either change state or return data, not both.
- **IMM – Immutability**: Prefer immutable data and avoid in-place mutation.
- **PURE – Pure Functions**: Prefer functions with no hidden state and no side effects.
- **NGS – No Global State**: Pass state explicitly and avoid singletons and mutable globals.
- **PTI – Program to an Interface**: Code against contracts, not implementations.
- **LAY – Layered Architecture**: Keep layer boundaries clear, with dependencies pointing one way.

## Functions & Size
- **SMALL – Small Functions**: Make each function do one thing at one level of abstraction.
- **ARGS – Few Parameters**: Group related arguments into an object when there are more than about 3.
- **FLAT – Avoid Deep Nesting**: Use guard clauses and early returns.
- **NFA – No Flag Arguments**: Split the function instead of using a boolean mode switch.
- **SE – Explicit Side Effects**: Make mutations and I/O obvious from the name and signature.

## Robustness & Security
- **FF – Fail Fast**: Detect and report errors at the earliest point.
- **VAL – Validate at Boundaries**: Treat all external input as untrusted and validate it on entry.
- **NSE – No Swallowed Errors**: Handle errors meaningfully or propagate them, and never use empty catch blocks.
- **EEH – Explicit Error Handling**: Use specific error types and messages that include context.
- **IDEM – Idempotency**: Make repeated operations safe wherever possible.
- **GD – Graceful Degradation**: Keep partial failure from causing total failure.
- **PLP – Least Privilege**: Request and grant only the access that is required.
- **SBD – Secure by Default**: Never hard-code secrets, and use safe defaults.
- **RP – Robustness Principle**: Be strict in what you produce and tolerant in what you accept, within reason.

## Quality & Process
- **TDD – Testable Design**: Write code that is easy to test, and test behavior rather than implementation details.
- **TP – Test Pyramid**: Write many unit tests, fewer integration tests, and few end-to-end tests.
- **REF – Continuous Refactoring**: Improve structure in small, safe steps with tests as a safety net.
- **RCA – Root Cause Fix**: Fix causes, not symptoms, and do not patch around bugs.
- **BW – Broken Windows**: Fix or flag small problems before they accumulate.
- **AC – Atomic Commits**: Make small commits that each do one logical change, with clear messages.
- **AUTO – Automate**: Use linters, formatters, and CI instead of manual checks.
- **MWMRMF – Make it Work, Make it Right, Make it Fast**: Do these in that order.
- **ADR – Document Decisions**: Record why non-obvious choices were made.
- **OBS – Observability**: Add meaningful logging, metrics, and traces at important boundaries.
- **PRAG – Pragmatism**: Weigh trade-offs, since no principle is absolute.

## Agent Behavior
- **NIA – No Invented APIs**: Verify that functions, libraries, flags, and file paths exist before using them.
- **RBW – Read Before Writing**: Inspect the existing code and reuse existing utilities and patterns first.
- **AAA – Ask When Ambiguous**: Ask a precise question instead of guessing requirements.
- **SCOPE – Stay in Scope**: Do not add unrequested features, dependencies, or refactors.
- **VER – Verify Your Work**: Run the tests, linter, or build. Do not claim success without evidence.
- **EXP – Explain Deviations**: State briefly when and why you broke a rule above.

These are decision principles, not a mandate to force every design pattern into every change. Apply them in context, preserve established repository conventions, and explain a justified deviation when it materially affects the implementation or review.
