# Skill Factory Branding Pack

This directory contains the branding assets and configuration for **Skill Factory**, a white-labelled deployment of OpenHands Agent Canvas.

## Assets

### Logo
- **Path**: `branding/logo.png`
- **Description**: Yellow cartoon character with book (mascot for skills-driven development)
- **Status**: Expected locally; not committed to git
- **Placeholder Note**: If logo.png is missing, it should be placed here. Do not commit auto-generated or placeholder bitmaps.

### Brand Configuration
- **File**: `branding/brand.json`
- **Purpose**: Defines product name, colors, tagline, string replacements, and upstream attribution

## Applying the Rebrand to a Canvas Fork

See [`docs/rebrand-openhands.md`](../docs/rebrand-openhands.md) for step-by-step instructions on:
1. Forking the MIT-licensed OpenHands Agent Canvas
2. Replacing logos, favicons, and title strings
3. Maintaining proper MIT license notices
4. Excluding Polyform-licensed enterprise components
5. Avoiding OpenHands trademark infringement

## Quick Reference

### Color Palette

| Color | Hex | Usage |
|-------|-----|-------|
| Primary Yellow | `#F5C518` | Brand primary, buttons, highlights |
| Navy | `#0B1B3A` | Text, headers, navigation |
| Accent Blue | `#4A90E2` | Links, secondary actions |
| Background | `#F8F9FA` | Page backgrounds |

### String Replacements

Apply these replacements when rebranding:
- `OpenHands Agent Canvas` → `Skill Factory`
- `OpenHands` → `Skill Factory`
- `Agent Canvas` → `Skill Factory`
- `openhands` → `skillfactory` (in code/package names)
- `@openhands/agent-canvas` → `@skillfactory/canvas` (npm package scope)

## Checklist Script

Use `scripts/apply-branding-checklist.md` to systematically verify all branding touchpoints in a forked Canvas instance.

## Legal and Attribution

Skill Factory is a white-label fork of **OpenHands Agent Canvas**, which is MIT-licensed. We respect the upstream license and do not use OpenHands trademarks or claim affiliation. See `brand.json` for full upstream attribution.

## Related

- **Canvas UI Repository**: [clintivins/skill-factory-canvas](https://github.com/clintivins/skill-factory-canvas) (planned)
- **Skills Catalogue**: [clintivins/skills](https://github.com/clintivins/skills)
- **Upstream OpenHands**: [docs.openhands.dev](https://docs.openhands.dev/openhands/usage/agent-canvas/setup)
