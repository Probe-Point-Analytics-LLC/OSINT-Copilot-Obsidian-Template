# OSINT Copilot - Obsidian Vault Template

A comprehensive Obsidian vault template designed to help security analysts, threat intelligence researchers, and OSINT investigators leverage the power of the **OSINT Copilot plugin** for structured intelligence gathering and analysis.

## 🎯 What is This?

This template provides a pre-configured Obsidian vault with:

- **Structured entity folders** for organizing OSINT investigations (Person, Company, Location, Event, etc.)
- **Pre-configured OSINT Copilot plugin** with optimal settings
- **Example workflows** demonstrating entity extraction, relationship mapping, and report generation
- **Ready-to-use folder structure** following FollowTheMoney (FTM) schema standards

## ✨ Features

The OSINT Copilot plugin transforms Obsidian into a powerful threat intelligence workspace with:

### AI-Powered Features (Premium License Required)
- 🤖 **AI-Powered Q&A**: Ask natural language questions about your investigation notes
- 🔍 **Entity Extraction**: Automatically identify and create structured entities from research
- 🕵️ **Dark Web Investigation**: Automated searches across 15+ dark web engines via Tor
- 📊 **Report Generation**: Generate comprehensive threat intelligence reports

### Free Visualization Features (No License Required)
- 🕸️ **Entity Graph View**: Visual graphs showing connections between entities
- 📅 **Timeline View**: Chronological visualization of events
- 🗺️ **Map View**: Geographic display of locations

## 📋 Prerequisites

Before using this template, ensure you have:

1. **Obsidian** installed (version 1.0.0 or higher)
   - Download from: [https://obsidian.md](https://obsidian.md)
2. **Premium License Key** for OSINT Copilot (for AI features)
   - Purchase at: [https://osint-copilot.com](https://osint-copilot.com)

## 🚀 Quick Start

### Step 1: Get the Template

**Option A: Clone with Git (Recommended)**
```bash
# Clone the template with submodules (includes the plugin)
git clone --recursive git@github.com:Probe-Point-Analytics-LLC/OSINT-Copilot-Obsidian-Template.git
cd OSINT-Copilot-Obsidian-Template
```

**If you already cloned without `--recursive`:**
```bash
# Initialize and update submodules
git submodule update --init --recursive
```

**Option B: Download ZIP**
1. Click the green "Code" button above
2. Select "Download ZIP"
3. Extract to your desired location
4. **Important**: You'll need to manually download the plugin from [the plugin repository](https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin) and place it in `.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/`

### Step 2: Open in Obsidian

1. Launch **Obsidian**
2. Click **"Open folder as vault"**
3. Navigate to and select the `OSINT-Copilot-Obsidian-Template` folder
4. Click **"Trust author and enable plugins"** when prompted

### Step 3: Configure Your License Key


**Option B: Manual Setup**
2. Open Obsidian **Settings** (gear icon in bottom-left)
3. Navigate to **Community Plugins** → **OSINT Copilot**
4. Enter your **Premium License Key** in the "Report API Key" field
5. Click **Save**

> **Note:** The plugin is already installed in this template. The `data.json.template` file is provided as a reference - your actual `data.json` file (containing your API key) will be automatically excluded from git commits.

### Step 4: Start Investigating!

1. Open the **OSINT Copilot** panel (click the shield icon in the left sidebar)
2. Try the example workflows:
   - Ask questions about the example reports in the `Reports/` folder
   - Explore the entity graph view
   - Create your first entity using the entity creation tools

## 📁 Vault Structure

```
OSINT-Copilot-Obsidian-Template/
├── OSINTCopilot/              # Entity storage (organized by type)
│   ├── Person/                # Person entities
│   ├── Company/               # Company/Organization entities
│   ├── Location/              # Geographic locations
│   ├── Event/                 # Events and incidents
│   ├── Email/                 # Email addresses
│   ├── Phone/                 # Phone numbers
│   ├── Username/              # Online usernames/handles
│   ├── Website/               # Websites and domains
│   ├── Vehicle/               # Vehicles
│   ├── Image/                 # Images and media
│   ├── Text/                  # Text documents
│   ├── Evidence/              # Evidence artifacts
│   └── Connections/           # Relationships between entities
├── Reports/                   # Generated investigation reports
├── Welcome.md                 # Getting started guide
└── README.md                  # This file
```

## 🔄 Updating the Plugin

The OSINT Copilot plugin is included as a git submodule. To update to the latest version:

```bash
# Update the plugin submodule to the latest version
git submodule update --remote .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Commit the update
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update OSINT Copilot plugin to latest version"
```

Alternatively, you can update all submodules at once:
```bash
git submodule update --remote
```

## 📖 Usage Guide

### Creating Entities

1. Click the **"Create Entity"** button in the OSINT Copilot panel
2. Select entity type (Person, Company, Location, etc.)
3. Fill in the entity properties
4. The entity will be automatically saved in the appropriate folder

### Extracting Entities from Text

1. Select text in any note
2. Right-click and choose **"Extract Entities"**
3. The AI will identify entities and create structured notes automatically

### Generating Reports

1. Click **"Generate Report"** in the OSINT Copilot panel
2. Enter your investigation query
3. Choose report type:
   - **Standard Report**: General OSINT investigation
   - **Dark Web Report**: Tor-based dark web search
4. The report will be generated in the `Reports/` folder

### Visualizing Connections

- **Graph View**: Click the graph icon to see entity relationships
- **Timeline View**: View events chronologically
- **Map View**: See geographic distribution of locations

## 🔧 Manual Installation (If Needed)

If you need to reinstall or update the OSINT Copilot plugin:

1. Download the latest release from: [https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin](https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin)
2. Extract the files to: `.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/`
3. Restart Obsidian
4. Enable the plugin in Settings → Community Plugins

## 📚 Additional Resources

- **Plugin Repository**: [https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin](https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin)
- **User Guide**: See `.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/USER_GUIDE.md` in this vault
- **Purchase License**: [https://osint-copilot.com](https://osint-copilot.com)
- **FollowTheMoney Schema**: [https://followthemoney.tech](https://followthemoney.tech)

## 🛡️ Security & Privacy

### Important Security Notes

- **Never commit your API key**: The `.gitignore` file is configured to exclude `data.json` (which contains your license key)
- **Investigation data**: By default, the `Reports/` and `OSINTCopilot/` folders are tracked. If your investigations contain sensitive data, uncomment the relevant lines in `.gitignore`
- **Conversation history**: The `.osint-copilot/conversations/` folder is excluded from version control

### Before Publishing Your Own Investigations

If you fork this template for your own investigations:

1. Review `.gitignore` to ensure sensitive data is excluded
2. Remove or sanitize example reports in `Reports/`
3. Clear example entities in `OSINTCopilot/`
4. Never commit your `data.json` file with your API key

## 🤝 Contributing

This template is maintained by Probe Point Analytics LLC. For issues or suggestions:

- **Template Issues**: Open an issue in this repository
- **Plugin Issues**: Open an issue at [https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin](https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin)

## 📄 License

This template is provided as-is for use with the OSINT Copilot plugin. The OSINT Copilot plugin requires a separate premium license for AI-powered features.

---

**Ready to start your OSINT investigation?** Open this vault in Obsidian and explore the example workflows! 🚀

