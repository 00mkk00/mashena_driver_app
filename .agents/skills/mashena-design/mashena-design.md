---
name: mashena-design
description: >
  Implements Flutter UI for the Mashena Driver App using the existing design
  system. Trigger whenever the user asks to build, design, create, or modify
  any screen, widget, page, dialog, bottom sheet, or component.
---

# Mashena Driver Design System

Implement UI directly inside the existing Mashena project.

Do not generate standalone examples.

Always reuse the project's existing widgets, theme, and design system.

---

# Project Inspection (MANDATORY)

Before generating any UI:

1. Inspect the project.
2. Locate the existing design system.
3. Detect:
   - AppColors
   - AppSpacing
   - AppRadius
   - AppShadows
   - AppTypography / text styles
   - reusable widgets
   - custom buttons
   - text fields
   - cards
   - dialogs
   - bottom sheets
   - theme extensions
4. Reuse existing components whenever possible.
5. Never recreate widgets that already exist.

---

# Design Rules

Follow the project's current design exactly.

Never introduce a different visual language.

Match:

- spacing
- typography
- corner radius
- elevations
- shadows
- paddings
- animations
- icon sizes
- widget hierarchy

---

# Tokens

Never hardcode:

- colors
- spacing
- radius
- shadows
- text styles
- durations
- icon sizes

Always use the project's design tokens.

Examples include:

- AppColors
- AppSpacing
- AppRadius
- AppShadows
- AppTextStyles

If a token already exists, always use it.

---

# Responsiveness

Always follow the project's responsive approach.

If ScreenUtil is used, consistently apply:

- .w
- .h
- .r
- .sp

Never mix responsive and fixed values.

---

# Theme

Support both Light and Dark themes.

Use theme colors and project tokens.

Never hardcode white or black.

---

# Reusable Components

Before creating a widget:

Search the project.

If a similar component exists:

Reuse it.

Only create a new reusable widget if necessary.

Avoid duplicate implementations.

---

# Layout

Keep layouts:

- clean
- modern
- minimal
- consistent

Prefer composition over deeply nested widgets.

Extract reusable sections when appropriate.

---

# Flutter Best Practices

Always:

- const where possible
- meaningful widget names
- proper widget decomposition
- avoid duplicated code
- preserve import style
- preserve formatting
- preserve folder structure

---

# Accessibility

Ensure:

- readable contrast
- proper touch targets
- semantic widgets where appropriate
- scalable text

---

# Existing Files

Modify existing files instead of creating duplicates.

If new reusable widgets are needed,

place them in the project's existing shared widget structure.

---

# Final Response

Do not print the complete UI code in chat.

Instead provide a concise summary such as:

✔ Updated Home Screen

✔ Added Trip Card widget

✔ Reused PrimaryButton

✔ Reused AppTextField

✔ Added Driver Status badge

✔ UI implementation completed