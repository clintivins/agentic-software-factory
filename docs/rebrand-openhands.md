# Rebranding OpenHands Agent Canvas as Skill Factory

This guide provides concrete steps to fork the MIT-licensed **OpenHands Agent Canvas** and rebrand it as **Skill Factory**.

## Prerequisites

- GitHub repository ready: `clintivins/skill-factory-canvas`
- Skill Factory branding assets from `clintivins/agentic-software-factory/branding/`
- Understanding of OpenHands Agent Canvas architecture ([docs](https://docs.openhands.dev/openhands/usage/agent-canvas/setup))

## Step 1: Fork the Repository

```bash
# Fork OpenHands Agent Canvas (MIT-licensed)
git clone https://github.com/OpenHands/OpenHands.git skill-factory-canvas
cd skill-factory-canvas

# Set up new remote
git remote rename origin upstream
git remote add origin https://github.com/clintivins/skill-factory-canvas.git
```

## Step 2: Identify License Boundaries

OpenHands uses **dual licensing**:
- **MIT License**: Core Agent Canvas (safe to fork and rebrand)
- **Polyform License**: Enterprise features in `enterprise/` directory (proprietary, do NOT include)

**Action**: Exclude or delete the `enterprise/` directory and any Polyform-licensed code.

```bash
# If enterprise/ exists, remove it
rm -rf enterprise/
```

## Step 3: Replace Visual Assets

### Logo Files
Replace logos in these typical locations (verify paths in actual repo):
```
public/logo.png
public/logo.svg
public/favicon.ico
public/favicon.svg
public/apple-touch-icon.png
public/android-chrome-*.png
public/manifest.json (icon paths)
src/assets/logo.*
```

**Source**: Use `branding/logo.png` from this repository (yellow cartoon character with book).

### Favicon Generation
```bash
# Generate favicons from logo.png using a tool like:
# - https://realfavicongenerator.net/
# - imagemagick: convert logo.png -resize 32x32 favicon.ico
```

## Step 4: Replace Text Strings

### Key Files to Update

1. **`package.json`**
   ```json
   {
     "name": "@skillfactory/canvas",
     "description": "Skill Factory - Skills-driven agentic software factory",
     "author": "clintivins",
     "homepage": "https://github.com/clintivins/skill-factory-canvas"
   }
   ```

2. **`public/index.html`** (or framework equivalent)
   ```html
   <title>Skill Factory</title>
   <meta name="description" content="Skills-driven agentic software factory" />
   ```

3. **`src/config/brand.ts`** (or equivalent config file)
   ```typescript
   export const BRAND_NAME = 'Skill Factory';
   export const BRAND_TAGLINE = 'Skills-driven agentic software factory';
   ```

4. **README.md**
   - Replace "OpenHands Agent Canvas" with "Skill Factory"
   - Add attribution section (see below)

### Global String Replacement

Use search-and-replace cautiously:
```bash
# Example: replace display strings (review each change!)
find src/ -type f -name "*.ts" -o -name "*.tsx" | xargs sed -i '' 's/OpenHands Agent Canvas/Skill Factory/g'
find src/ -type f -name "*.ts" -o -name "*.tsx" | xargs sed -i '' 's/OpenHands/Skill Factory/g'

# Update import paths if needed
find src/ -type f | xargs sed -i '' 's/@openhands\/agent-canvas/@skillfactory\/canvas/g'
```

**Warning**: Do NOT replace "OpenHands" in MIT license text, comments attributing upstream, or import paths that reference actual OpenHands packages.

## Step 5: Update Color Scheme

Apply Skill Factory colors from `branding/brand.json`:

**Primary Palette**:
- Primary: `#F5C518` (yellow)
- Navy: `#0B1B3A`
- Accent: `#4A90E2` (light blue)

**Update in**:
- CSS/SCSS variables (e.g., `src/styles/variables.scss`)
- Tailwind config (`tailwind.config.js`)
- Theme config files

Example Tailwind config:
```javascript
module.exports = {
  theme: {
    extend: {
      colors: {
        primary: '#F5C518',
        navy: '#0B1B3A',
        accent: '#4A90E2',
      }
    }
  }
}
```

## Step 6: Maintain MIT License Compliance

### Keep Original License
Do NOT remove or modify the existing MIT license file from OpenHands.

### Add Attribution
Create `ATTRIBUTION.md`:
```markdown
# Attribution

Skill Factory is a white-label fork of **OpenHands Agent Canvas**, 
which is MIT-licensed and developed by the OpenHands project.

- Upstream Project: https://github.com/OpenHands/OpenHands
- License: MIT (see LICENSE file)

OpenHands and Agent Canvas are trademarks of the OpenHands project.
Skill Factory does not claim endorsement by or affiliation with the 
OpenHands project.
```

### Update README License Section
Add to your README.md:
```markdown
## License

Skill Factory is based on [OpenHands Agent Canvas](https://github.com/OpenHands/OpenHands), 
which is MIT-licensed. See [LICENSE](./LICENSE) for details.

OpenHands and Agent Canvas are trademarks of their respective owners.
```

## Step 7: Remove OpenHands Trademarks

**Do NOT**:
- Use "OpenHands" or "Agent Canvas" in branding, marketing, or product names
- Claim affiliation with or endorsement by OpenHands project
- Use OpenHands logos or visual identity

**DO**:
- Attribute the upstream project in documentation and code comments
- Preserve MIT license text
- Acknowledge the fork relationship

## Step 8: Configure MCP Integration

Wire up the Skills MCP server (from `clintivins/skills`):

1. Copy MCP config template from `clintivins/agentic-software-factory/config/mcp.skills.example.json`
2. Update Canvas MCP settings to point to `skills-mcp` stdio server
3. Test with: `Search my skills catalogue for kubernetes hardening`

See main [README.md](../README.md) for MCP setup instructions.

## Step 9: Update Dependencies

```bash
# Update package.json name/scope
npm install
npm run build
npm run test
```

## Step 10: Commit and Push

```bash
git add .
git commit -m "Rebrand OpenHands Agent Canvas as Skill Factory

- Replace logos and favicons
- Update product name and colors
- Add upstream attribution
- Remove enterprise/ (Polyform license)
- Wire Skills MCP catalogue"

git push origin main
```

## Verification Checklist

Use `scripts/apply-branding-checklist.md` from this repository to verify all branding touchpoints.

## Common Issues

### Issue: OpenHands Imports Fail
**Cause**: Changed import paths too aggressively  
**Fix**: Only rename your package scope; keep external `@openhands/*` imports unchanged

### Issue: Missing Favicon
**Cause**: Forgot to regenerate all icon sizes  
**Fix**: Use favicon generator tool and replace all sizes

### Issue: License Compliance
**Cause**: Removed or modified MIT license  
**Fix**: Keep original LICENSE file, add ATTRIBUTION.md separately

## Resources

- **OpenHands Agent Canvas Docs**: https://docs.openhands.dev/openhands/usage/agent-canvas/setup
- **MIT License Guide**: https://choosealicense.com/licenses/mit/
- **Skill Factory Branding**: `../branding/brand.json`
- **Skills Catalogue**: https://github.com/clintivins/skills

## Support

For Skill Factory-specific issues, see [clintivins/agentic-software-factory](https://github.com/clintivins/agentic-software-factory).
