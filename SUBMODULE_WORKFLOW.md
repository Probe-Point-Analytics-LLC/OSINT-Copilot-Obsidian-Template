# Git Submodule Workflow Guide

## Overview

The OSINT Copilot plugin is managed as a git submodule. This guide explains how to work with the submodule for both template maintainers and plugin developers.

## For Template Users

### Cloning the Template

**First time clone (recommended):**
```bash
git clone --recursive git@github.com:Probe-Point-Analytics-LLC/OSINT-Copilot-Obsidian-Template.git
cd OSINT-Copilot-Obsidian-Template
```

**If you forgot `--recursive`:**
```bash
git clone git@github.com:Probe-Point-Analytics-LLC/OSINT-Copilot-Obsidian-Template.git
cd OSINT-Copilot-Obsidian-Template
git submodule update --init --recursive
```

### Updating the Template

```bash
# Pull latest template changes
git pull origin main

# Update submodules to match template's references
git submodule update --init --recursive
```

## For Template Maintainers

### Workflow 1: Develop Plugin in Submodule Directory

This is the recommended workflow for making plugin changes while working on the template.

```bash
# Navigate to the plugin submodule
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Make sure you're on the main branch
git checkout main
git pull origin main

# Make your changes
# ... edit files ...

# Commit changes to the plugin repository
git add .
git commit -m "Your plugin changes"
git push origin main

# Go back to template root
cd ../../..

# Update the submodule reference in the template
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin submodule to latest version"
git push origin main
```

### Workflow 2: Develop Plugin in Standalone Repository

If you prefer to develop the plugin separately:

```bash
# Clone the plugin repository separately
git clone git@github.com:Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin.git ~/plugin-dev
cd ~/plugin-dev

# Make changes, commit, and push
# ... edit files ...
git add .
git commit -m "Your changes"
git push origin main

# Update the template's submodule reference
cd /path/to/template
git submodule update --remote .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin to latest version"
git push origin main
```

### Updating Plugin to Latest Version

```bash
# Update submodule to latest commit from plugin repo
git submodule update --remote .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Review the changes
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git log --oneline -5
cd ../../..

# Commit the update
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin submodule to latest version"
git push origin main
```

### Pinning to Specific Plugin Version

```bash
# Navigate to submodule
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Checkout specific version/tag
git fetch --tags
git checkout v1.2.3

# Go back to template root
cd ../../..

# Commit the pinned version
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Pin plugin to version v1.2.3"
git push origin main
```

### Checking Submodule Status

```bash
# View submodule status
git submodule status

# View detailed submodule information
git submodule

# Check which commit the template references
git ls-tree main .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
```

## Important Notes

### data.json Protection

- The `data.json` file (containing API keys) is **automatically excluded** by the plugin's `.gitignore`
- This works both in the submodule and when developing the plugin standalone
- Never commit `data.json` to either repository

### Submodule Detached HEAD

When you update submodules, they may be in "detached HEAD" state. This is normal for submodules.

**To work on the plugin:**
```bash
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git checkout main
git pull origin main
# Now you can make changes
```

### Syncing Changes

**Template → Plugin:** Changes made in the submodule directory are pushed directly to the plugin repository.

**Plugin → Template:** After pushing to the plugin repo, update the template's submodule reference:
```bash
git submodule update --remote
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin"
```

## Troubleshooting

### Submodule Not Initialized
```bash
git submodule update --init --recursive
```

### Submodule Shows Modifications
```bash
# Check what changed
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git status

# If you want to discard changes
git checkout .

# If you want to commit changes
git add .
git commit -m "Your changes"
git push origin main
```

### Reset Submodule to Template's Referenced Version
```bash
git submodule update --force
```

### Update All Submodules
```bash
git submodule update --remote --recursive
```

## Benefits of This Approach

✅ **Single Source of Truth**: Plugin code lives in one repository  
✅ **Version Control**: Template can reference specific plugin versions  
✅ **Independent Development**: Plugin can be developed separately  
✅ **Easy Updates**: Users get plugin updates by updating submodule  
✅ **Clean History**: No duplicate commits in template repo  
✅ **Automatic Sync**: Changes in plugin repo automatically available to template  

## Quick Reference

```bash
# Clone template with plugin
git clone --recursive <template-repo>

# Update template and plugin
git pull && git submodule update --init --recursive

# Update plugin to latest
git submodule update --remote

# Work on plugin
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git checkout main
# ... make changes ...
git push origin main
cd ../../..
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin"
```

