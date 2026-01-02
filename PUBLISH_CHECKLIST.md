# Publishing Checklist for OSINT Copilot Template

## ✅ Pre-Publication Security Verification

- [x] **API Key Protection**: `data.json` is excluded from git
- [x] **Template File**: `data.json.template` contains placeholder only
- [x] **Workspace Files**: User-specific files excluded
- [x] **Conversation History**: `.osint-copilot/` folder excluded
- [x] **Git History**: No sensitive data in commit history

## 📋 Files Created

- [x] `README.md` - Comprehensive documentation
- [x] `.gitignore` - Protects sensitive data
- [x] `setup.sh` - Automated setup script
- [x] `CONTRIBUTING.md` - Contribution guidelines
- [x] `data.json.template` - Safe configuration template

## 🚀 Publishing Steps

### 1. Push to GitHub

```bash
git push -u origin main
```

### 2. Configure Repository on GitHub

After pushing, go to the repository settings on GitHub:

1. **About Section** (top right):
   - Description: "Obsidian vault template for OSINT investigations using the OSINT Copilot plugin"
   - Website: https://osint-copilot.com
   - Topics: `obsidian`, `osint`, `threat-intelligence`, `security`, `investigation`, `template`

2. **Settings**:
   - Enable Issues
   - Enable Discussions (optional)
   - Add a LICENSE file if desired

### 3. Create Initial Release (Optional)

1. Go to "Releases" → "Create a new release"
2. Tag: `v1.0.0`
3. Title: "Initial Release - OSINT Copilot Template v1.0.0"
4. Description:
   ```markdown
   # OSINT Copilot Obsidian Template v1.0.0
   
   Initial release of the OSINT Copilot Obsidian vault template.
   
   ## Features
   - Pre-configured vault structure for OSINT investigations
   - OSINT Copilot plugin included
   - Example entities and reports
   - Automated setup script
   
   ## Quick Start
   1. Clone this repository
   2. Run `./setup.sh`
   3. Open in Obsidian
   4. Add your license key from https://osint-copilot.com
   
   See README.md for detailed instructions.
   ```

### 4. Test the Template

Clone to a fresh location and verify:

```bash
cd /tmp
git clone git@github.com:Probe-Point-Analytics-LLC/OSINT-Copilot-Obsidian-Template.git test-template
cd test-template
./setup.sh
# Open in Obsidian and verify everything works
```

## ⚠️ Important Notes

### Example Data Review

The template includes example reports with dark web investigation data:
- `Reports/DarkWeb_Weed_in_Hungury_2026-01-02.md`
- `Reports/Sheriff_company_and_its_owners_Report_2026-01-02.md`

**Decision needed**: Are these appropriate for public release, or should they be sanitized/removed?

### User Requirements

Users will need:
1. Obsidian installed (free)
2. Premium license key from https://osint-copilot.com (paid)

### Support Channels

Make sure users know where to get help:
- Template issues: This repository
- Plugin issues: https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin
- License purchases: https://osint-copilot.com

## 📝 Post-Publication Tasks

- [ ] Announce on relevant channels (if applicable)
- [ ] Monitor issues and questions
- [ ] Update documentation based on user feedback
- [ ] Consider creating video tutorial (optional)

## 🔒 Ongoing Security

Remember to:
- Never commit `data.json` files
- Review PRs for sensitive data
- Keep example data sanitized
- Update `.gitignore` if new sensitive files are added

---

**Ready to publish?** Run: `git push -u origin main`

