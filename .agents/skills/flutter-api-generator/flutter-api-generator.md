---
name: flutter-api-implementer
description: >
  Implements a new API endpoint inside an existing Flutter Clean Architecture
  project. Trigger when the user provides an API specification such as:
  API path, HTTP method, request fields, response fields, feature/module name,
  or asks to implement a new endpoint.
---

# Flutter API Implementer

Implement a complete API feature directly inside the current Flutter project.

This skill is intended for EXISTING projects.
Do not generate standalone snippets.
Modify the project itself.

---

# Required Input

The user should provide:

- API path
- HTTP method
- Body fields (optional)
- Query/path params (optional)
- Response fields
- Feature name
- Module name
- Repository name (optional)

If repository name is omitted, infer it.

Only ask questions if response fields are missing or ambiguous.

---

# Primary Goal

Implement the endpoint completely inside the existing project.

The final result should compile after running build_runner.

Never require the user to manually copy generated code.

---

<!-- # Project Inspection (MANDATORY)

Before making any changes:
1. Locate the target feature module first.
2. Inspect only: the target feature's folder, the DI/service-locator file,
   the Endpoints/constants file, and one sibling feature (for convention
   reference) if the target feature is new.
3. Do NOT scan the entire project tree unless the feature module cannot
   be located or no similar feature exists to infer conventions from. -->
<!-- 1. Inspect the entire project.
2. Locate the feature module.
3. Detect the existing Clean Architecture structure.
4. Detect:
   - datasource style
   - repository style
   - mapper style
   - entity style
   - params style
   - freezed usage
   - DI style
   - API client usage
   - endpoint constants
   - imports
   - error handling
5. Follow the project's conventions exactly.
6. Never replace project conventions with generic examples. -->

If similar APIs already exist, copy their implementation style.

---

# Implementation Rules

Implement—not demonstrate.

Never output placeholder implementations.

Never output snippets intended for manual copy-paste.

Every generated file must compile.

No:

...

TODO

pseudo code

implementation here

etc.

---

# Existing Files

Always modify existing files when appropriate.

Examples:

- Endpoints
- Remote datasource
- Remote datasource implementation
- Repository
- Repository implementation
- Dependency injection
- Barrel exports
- Feature exports

Never create duplicate files if an existing one should be extended.

---

# File Creation

Create new files only when they do not already exist.

Otherwise extend the existing implementation.

---

# Architecture

Reuse the project's architecture exactly.

Never change:

folder structure

naming conventions

constructor ordering

imports

error handling

Either usage

Failure mapping

Freezed style

extension style

API client usage

---

# Dependency Injection

Locate the DI file automatically.

Examples include:

injector.dart

get_it.dart

service_locator.dart

Register automatically:

- datasource
- repository
- use case

using the project's existing registration style.

---

# Endpoints

Automatically update the Endpoints class.

Follow the existing naming convention.

---

# Repository

Reuse the existing repository if it already contains related APIs.

Otherwise extend it.

Do not duplicate repositories.

---

# Datasource

Reuse the existing datasource if present.

Only add the new method.

---

# Models

Before creating a model:

Search the project.

If an equivalent model already exists,

reuse it.

Do not duplicate models.

model attributes should be nullable.

---

# Entities

Before creating an entity:
Search the project.
Reuse existing entities whenever possible.

Entity attributes MUST be required (non-nullable), regardless of whether
the corresponding model field is nullable.
Never make an entity field nullable to avoid handling a null case —
that handling belongs in the mapper, not the entity.

---

# Params

Generate params only if required.

GET requests without parameters should not create unnecessary Params classes.

---

# Mapper

Generate mapper extensions only when needed.
Reuse existing nested mappers.

The mapper is solely responsible for reconciling nullable model fields
into required entity fields. For every model field that is nullable
but maps to a required entity field:
- Use a sensible default (empty string, 0, false, empty list) OR
- Use the project's existing fallback/default-value convention if one
  exists (search for patterns like `?? ''`, `?? 0`, `.orDefault()`, etc.)
Never mark an entity field nullable just because the source model field
is nullable — resolve it in the mapper instead.


---

# Imports

Preserve the project's import style.

Do not convert package imports to relative imports or vice versa.

---

# Formatting

Preserve formatting exactly as the surrounding files.

---

# Build Runner

If freezed or json_serializable files were added,

ensure all required part directives are added.

Do not generate *.g.dart or *.freezed.dart.

---

# Final Response

Do NOT print all generated code.

Instead provide a concise summary like:

✔ Updated Endpoints

✔ Added login model

✔ Added login params

✔ Extended auth datasource

✔ Extended auth repository

✔ Registered dependencies

✔ Feature implementation completed

If any ambiguity prevented completion, clearly state only those remaining issues.

# Fast Path
If an existing endpoint in the same feature is structurally similar
(same HTTP method shape, same datasource/repository), skip full
convention detection and directly clone that endpoint's pattern,
substituting the new path/fields.