# Converting OSINT Copilot Plugin to Git Submodule

## Overview

This guide explains how to convert the embedded plugin code to a git submodule, allowing synchronized development across both repositories.

## Current Situation

- **Template Repo**: `git@github.com:Probe-Point-Analytics-LLC/OSINT-Copilot-Obsidian-Template.git`
- **Plugin Repo**: `git@github.com:Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin.git`
- **Plugin Location**: `.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/`

## Step-by-Step Conversion

### Step 1: Backup Current Plugin State

```bash
# Create a backup of the current plugin directory
cp -r .obsidian/plugins/Obsidian-OSINT-Copilot-plugin /tmp/plugin-backup
```

### Step 2: Remove Plugin from Template Repo

```bash
# Remove the plugin directory from git tracking
git rm -r .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Commit the removal
git commit -m "Remove plugin directory in preparation for submodule conversion"
```

### Step 3: Add Plugin as Submodule

```bash
# Add the plugin repository as a submodule
git submodule add git@github.com:Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin.git .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Initialize and update the submodule
git submodule update --init --recursive
```

### Step 4: Restore data.json.template

The submodule will pull the plugin code from its repository. We need to ensure our template-specific file is present:

```bash
# Copy the template file back if it's not in the plugin repo
cp /tmp/plugin-backup/data.json.template .obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json.template

# If this file should be in the plugin repo, commit it there:
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git add data.json.template
git commit -m "Add data.json.template for vault templates"
git push origin main
cd ../../..
```

### Step 5: Update Submodule Reference in Template

```bash
# Update the submodule reference in the template repo
git add .gitmodules .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Convert plugin to git submodule"
```

### Step 6: Update .gitignore

The `.gitignore` rules will still apply within the submodule directory.

### Step 7: Push Changes

```bash
# Push the template repo changes
git push origin main
```

## Working with Submodules

### For Template Maintainers

#### Making Changes to the Plugin

**Option A: Work directly in the submodule**
```bash
# Navigate to the plugin directory
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Make your changes
# ... edit files ...

# Commit and push to plugin repo
git add .
git commit -m "Your plugin changes"
git push origin main

# Go back to template root
cd ../../..

# Update the submodule reference in template
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin submodule to latest version"
git push origin main
```

**Option B: Work in standalone plugin repo, then update template**
```bash
# Clone the plugin repo separately
git clone git@github.com:Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin.git ~/plugin-dev

# Make changes, commit, and push
cd ~/plugin-dev
# ... make changes ...
git commit -am "Your changes"
git push origin main

# Update the template's submodule
cd /path/to/template
git submodule update --remote .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin to latest version"
git push origin main
```

#### Updating Plugin to Latest Version

```bash
# Update submodule to latest commit from plugin repo
git submodule update --remote .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Commit the update
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update plugin submodule to latest version"
git push origin main
```

#### Pinning to Specific Plugin Version

```bash
# Navigate to submodule
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Checkout specific version/tag
git checkout v1.2.3

# Go back to template root
cd ../../..

# Commit the pinned version
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Pin plugin to version v1.2.3"
git push origin main
```

### For Template Users

#### Cloning the Template (First Time)

```bash
# Clone with submodules
git clone --recursive git@github.com:Probe-Point-Analytics-LLC/OSINT-Copilot-Obsidian-Template.git

# OR clone normally then initialize submodules
git clone git@github.com:Probe-Point-Analytics-LLC/OSINT-Copilot-Obsidian-Template.git
cd OSINT-Copilot-Obsidian-Template
git submodule update --init --recursive
```

#### Updating Template and Plugin

```bash
# Pull latest template changes
git pull origin main

# Update all submodules to their referenced commits
git submodule update --init --recursive
```

## Automation: Update setup.sh

The setup script should be updated to handle submodules:

```bash
#!/bin/bash

# Initialize submodules if not already done
if [ ! -f ".obsidian/plugins/Obsidian-OSINT-Copilot-plugin/manifest.json" ]; then
    echo "Initializing plugin submodule..."
    git submodule update --init --recursive
fi

# Rest of setup script...
```

## Benefits of This Approach

1. ✅ **Single Source of Truth**: Plugin code lives in one repository
2. ✅ **Version Control**: Template can reference specific plugin versions
3. ✅ **Independent Development**: Plugin can be developed separately
4. ✅ **Easy Updates**: Users get plugin updates by updating submodule
5. ✅ **Clean History**: No duplicate commits in template repo

## Troubleshooting

### Submodule Not Initialized
```bash
git submodule update --init --recursive
```

### Submodule Detached HEAD
```bash
cd .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git checkout main
```

### Reset Submodule to Template's Referenced Version
```bash
git submodule update --force
```

## Alternative: Keep Current Approach

If submodules are too complex for your use case, you can keep the current embedded approach:

**Pros**: Simpler for users (no submodule commands needed)
**Cons**: Manual sync required, potential for divergence

In this case, use a sync script to periodically copy changes between repos.

