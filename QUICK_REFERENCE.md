# Git Submodule Quick Reference

## 🚀 For Template Users

### Clone Template (First Time)
```bash
git clone --recursive git@github.com:Probe-Point-Analytics-LLC/OSINT-Copilot-Obsidian-Template.git
cd OSINT-Copilot-Obsidian-Template
./setup.sh
```

### If You Forgot --recursive
```bash
git submodule update --init --recursive
./setup.sh
```

### Update Template and Plugin
```bash
git pull origin main
git submodule update --init --recursive
```

---

## 🔧 For Template Maintainers

### Update Plugin to Latest
```bash
git submodule update --remote .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin to latest version"
git push origin main
```

### Develop Plugin in Submodule
```bash
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git checkout main
git pull origin main

# Make changes...

git add .
git commit -m "Your changes"
git push origin main

cd ../../..
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin submodule"
git push origin main
```

### Pin to Specific Version
```bash
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git fetch --tags
git checkout v1.2.3
cd ../../..
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Pin plugin to v1.2.3"
git push origin main
```

### Check Submodule Status
```bash
git submodule status
```

---

## 🔍 Troubleshooting

### Submodule Not Initialized
```bash
git submodule update --init --recursive
```

### Submodule Detached HEAD
```bash
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git checkout main
```

### Reset Submodule
```bash
git submodule update --force
```

### Submodule Shows Modifications
```bash
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git status
# Discard: git checkout .
# Commit: git add . && git commit -m "msg" && git push
```

---

## 📚 Full Documentation

- **README.md** - User instructions and getting started
- **SUBMODULE_WORKFLOW.md** - Detailed workflows for all scenarios
- **PLUGIN_SUBMODULE_SETUP.md** - Technical reference
- **SUBMODULE_CONVERSION_COMPLETE.md** - Conversion summary

---

## ⚠️ Important Notes

- **data.json** is automatically excluded (contains API keys)
- Always use `--recursive` when cloning
- Submodules may be in "detached HEAD" state (this is normal)
- Changes to plugin must be pushed to plugin repo first
- Then update submodule reference in template repo

---

## 🎯 Common Commands

| Task | Command |
|------|---------|
| Clone with submodules | `git clone --recursive <repo>` |
| Initialize submodules | `git submodule update --init --recursive` |
| Update to latest plugin | `git submodule update --remote` |
| Check submodule status | `git submodule status` |
| Work on plugin | `cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin && git checkout main` |
| Reset submodule | `git submodule update --force` |

---

**Need more help?** See SUBMODULE_WORKFLOW.md for detailed workflows.

