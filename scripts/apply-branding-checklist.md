# Skill Factory Branding Checklist

Use this checklist to systematically verify all branding touchpoints when rebranding an OpenHands Agent Canvas fork as **Skill Factory**.

## 📋 Pre-Flight

- [ ] Clone/fork OpenHands Agent Canvas repository
- [ ] Copy `branding/logo.png` from `clintivins/agentic-software-factory`
- [ ] Review `docs/rebrand-openhands.md` for detailed instructions
- [ ] Backup original repo or work in a feature branch

---

## 🎨 Visual Assets

### Logo Files
- [ ] `public/logo.png` or `public/logo.svg`
- [ ] `src/assets/logo.png` or `src/assets/logo.svg`
- [ ] Any logo references in `src/components/` (header, sidebar, loading screens)

### Favicons
- [ ] `public/favicon.ico`
- [ ] `public/favicon.svg`
- [ ] `public/favicon-16x16.png`
- [ ] `public/favicon-32x32.png`
- [ ] `public/apple-touch-icon.png` (180x180)
- [ ] `public/android-chrome-192x192.png`
- [ ] `public/android-chrome-512x512.png`
- [ ] `public/safari-pinned-tab.svg`

### PWA/Manifest
- [ ] `public/manifest.json` or `public/site.webmanifest`
  - Update `name` and `short_name`
  - Update `icons` array paths
- [ ] `public/browserconfig.xml` (if present)

---

## 📝 Text and Metadata

### Package Configuration
- [ ] `package.json`
  - `name`: `@skillfactory/canvas` (or appropriate scope)
  - `description`: "Skill Factory - Skills-driven agentic software factory"
  - `author`: Update to your name/organization
  - `homepage`: `https://github.com/clintivins/skill-factory-canvas`
  - `repository.url`: Update to your fork
  - `bugs.url`: Update to your issues page
- [ ] `package-lock.json` or `yarn.lock` (regenerate after package.json changes)

### HTML Entry Point
- [ ] `index.html` or `public/index.html`
  - `<title>`: "Skill Factory"
  - `<meta name="description">`: Update tagline
  - `<meta property="og:title">`: "Skill Factory"
  - `<meta property="og:description">`: Update description
  - `<meta name="apple-mobile-web-app-title">`: "Skill Factory"
  - Favicon `<link>` tags point to correct paths

### Application Configuration
- [ ] `src/config/brand.ts` or `src/constants/brand.ts` (if exists)
  - Product name constants
  - Tagline/description
  - Colors
- [ ] `vite.config.ts` or build config
  - `define` globals for app name
  - Build output paths
- [ ] Environment variables (`.env`, `.env.example`)
  - `VITE_APP_NAME=Skill Factory`
  - Any analytics or tracking IDs

---

## 🎨 Styling and Theme

### Color Scheme
Apply Skill Factory colors: Primary `#F5C518`, Navy `#0B1B3A`, Accent `#4A90E2`

- [ ] `src/styles/variables.scss` or `src/styles/theme.scss`
- [ ] `tailwind.config.js` or `tailwind.config.ts`
  - Update `theme.colors` or `theme.extend.colors`
- [ ] `src/index.css` or `src/App.css`
  - CSS custom properties (`:root { --primary-color: ... }`)
- [ ] Component-specific style files referencing brand colors

### Dark Mode / Themes
- [ ] Update theme definitions in theme provider
- [ ] Ensure new colors work in both light and dark modes

---

## 📖 Documentation

### README
- [ ] `README.md`
  - Replace "OpenHands Agent Canvas" with "Skill Factory"
  - Update project description and tagline
  - Update installation/usage instructions with new package name
  - Add **Attribution** section (see template below)
  - Update links to your repository
  - Remove OpenHands branding/trademark claims

### License and Attribution
- [ ] Keep original `LICENSE` file (MIT) untouched
- [ ] Create `ATTRIBUTION.md` with upstream credit (see `docs/rebrand-openhands.md`)
- [ ] Add attribution section to README

### Changelog
- [ ] `CHANGELOG.md`
  - Add entry for rebrand/fork
  - Maintain upstream changelog history

---

## 🔧 Code and Imports

### Display Strings
Search and replace (use caution, review each change):
- [ ] "OpenHands Agent Canvas" → "Skill Factory"
- [ ] "OpenHands" → "Skill Factory" (in UI strings, not imports)
- [ ] "Agent Canvas" → "Skill Factory"

**Files to check manually**:
- [ ] `src/components/` (all UI components)
- [ ] `src/i18n/` translation files
- [ ] `src/constants/` or `src/config/`
- [ ] Error messages and notifications
- [ ] Loading screens and placeholders

### Package/Import Names
- [ ] Update internal package scope: `@openhands/...` → `@skillfactory/...` (only for your packages)
- [ ] **Do NOT** change external package imports (e.g., keep `import ... from '@openhands/agent-canvas'` if importing from actual OpenHands package)
- [ ] Update relative imports if package structure changed

---

## 🐳 Docker and Deployment

### Docker Configuration
- [ ] `Dockerfile` or `docker/Dockerfile`
  - `LABEL org.opencontainers.image.title="skill-factory-canvas"`
  - `LABEL org.opencontainers.image.description="Skill Factory Canvas"`
  - `LABEL org.opencontainers.image.source="https://github.com/clintivins/skill-factory-canvas"`
  - Environment variables (app name, base path)
- [ ] `docker-compose.yml` (if present)
  - Service names
  - Image names
  - Environment variables

### CI/CD
- [ ] `.github/workflows/` or CI config files
  - Update publish workflows with new package name
  - Update Docker registry paths
  - Update environment variables

---

## 🔗 Links and URLs

### External Links
- [ ] Update homepage URL in all configs
- [ ] Update documentation links
- [ ] Update bug report/issue tracker URLs
- [ ] Remove or redirect OpenHands-specific links

### Internal Navigation
- [ ] Check for hardcoded URLs in routing
- [ ] Update base paths if needed

---

## 🚫 License Compliance

### Remove Polyform/Enterprise Code
- [ ] Delete `enterprise/` directory (Polyform-licensed)
- [ ] Remove any proprietary features
- [ ] Verify all remaining code is MIT-licensed

### Trademark Compliance
- [ ] Remove "OpenHands" from branding/marketing copy
- [ ] Remove "Agent Canvas" from product names
- [ ] Keep attribution in docs and code comments
- [ ] Do not claim affiliation with OpenHands project

---

## 🧪 Testing

### Build Verification
```bash
npm install
npm run build
npm run lint
npm run test
```

- [ ] Build completes without errors
- [ ] No references to "OpenHands" in built assets (except attribution)
- [ ] Logo and favicon appear correctly
- [ ] Package name is correct in build output

### Runtime Verification
```bash
npm run dev  # or npm start
```

- [ ] Application loads with Skill Factory branding
- [ ] Browser tab shows "Skill Factory" title and favicon
- [ ] Logo displays correctly in header/sidebar
- [ ] Color scheme matches Skill Factory palette
- [ ] No console errors related to missing assets

### Visual Inspection
- [ ] Check logo in header/nav
- [ ] Check favicon in browser tab
- [ ] Check loading screens
- [ ] Check error pages
- [ ] Check settings/about pages
- [ ] Check mobile responsiveness

---

## 📦 Publishing

### NPM Package (if publishing)
- [ ] Update npm scope/package name in `package.json`
- [ ] Update `publishConfig` in `package.json`
- [ ] Test publish to npm (dry run: `npm publish --dry-run`)
- [ ] Update version number appropriately

### GitHub Release
- [ ] Tag release with version
- [ ] Update release notes
- [ ] Attach built assets if needed

---

## 📋 Final Checklist

- [ ] All visual assets replaced
- [ ] All text strings updated
- [ ] Colors and themes applied
- [ ] Documentation updated with attribution
- [ ] License compliance verified
- [ ] Build succeeds
- [ ] Application runs correctly
- [ ] Visual inspection passed
- [ ] Git committed with clear message
- [ ] Pushed to remote repository

---

## 🔍 Search Commands

Use these to find remaining references:

```bash
# Find "OpenHands" in source (excluding node_modules and build artifacts)
rg "OpenHands" --type ts --type tsx --type js --type jsx src/

# Find logo/favicon references
rg "logo\.(png|svg)" src/ public/
rg "favicon" src/ public/

# Find package name references
rg "@openhands" --type json --type ts --type js

# Find color hex codes to replace
rg "#[0-9A-Fa-f]{6}" src/styles/ src/components/
```

---

## 📚 Resources

- **Rebranding Guide**: `docs/rebrand-openhands.md`
- **Brand Configuration**: `branding/brand.json`
- **Upstream Docs**: https://docs.openhands.dev/
- **Favicon Generator**: https://realfavicongenerator.net/

---

## Attribution Template

Add this to your README.md:

```markdown
## License and Attribution

Skill Factory is based on [OpenHands Agent Canvas](https://github.com/OpenHands/OpenHands), 
which is MIT-licensed. See [LICENSE](./LICENSE) and [ATTRIBUTION.md](./ATTRIBUTION.md) 
for details.

OpenHands and Agent Canvas are trademarks of the OpenHands project. This fork does not 
claim affiliation with or endorsement by the OpenHands project.
```

---

**Last Updated**: 2026-09-09  
**Skill Factory Version**: 1.0  
**Based on**: OpenHands Agent Canvas (MIT)
