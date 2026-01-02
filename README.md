# OSINT Copilot - Obsidian Vault Template

![OSINT Copilot Interface](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Left%20pallete%20bigger.png)

A comprehensive Obsidian vault template designed to help **SOC analysts**, **threat intelligence researchers**, and **OSINT investigators** leverage the power of the **OSINT Copilot plugin** for structured intelligence gathering and analysis.

---

## 📑 Table of Contents

- [What is This?](#-what-is-this)
- [Features Overview](#-features-overview)
- [Prerequisites](#-prerequisites)
- [Quick Start](#-quick-start)
- [Vault Structure](#-vault-structure)
- [Core Features & Usage](#-core-features--usage)
  - [Vault Q&A (Lookup Mode)](#1-vault-qa-lookup-mode)
  - [Entity Graph View](#2-entity-graph-view)
  - [Dark Web Investigation](#3-dark-web-investigation)
  - [Report Generation](#4-report-generation)
  - [Entity Extraction](#5-entity-extraction)
  - [Timeline View](#6-timeline-view)
  - [Map View](#7-map-view)
- [Workflow Examples](#-workflow-examples)
- [Updating the Plugin](#-updating-the-plugin)
- [Troubleshooting](#-troubleshooting)
- [Security & Privacy](#-security--privacy)
- [Additional Resources](#-additional-resources)

---

## 🎯 What is This?

This template provides a **pre-configured Obsidian vault** with:

- **Structured entity folders** for organizing OSINT investigations (Person, Company, Location, Event, etc.)
- **OSINT Copilot plugin** installed as a git submodule (tracks `main` branch)
- **Example workflows** demonstrating entity extraction, relationship mapping, and report generation
- **Ready-to-use folder structure** following [FollowTheMoney (FTM)](https://followthemoney.tech) schema standards
- **Example reports and entities** to help you get started

### Who Is This For?

- **SOC Analysts** investigating security incidents
- **Threat Intelligence Researchers** tracking threat actors and campaigns
- **Security Investigators** conducting OSINT research
- **Incident Responders** documenting and analyzing threats

---

## ✨ Features Overview

The OSINT Copilot plugin transforms Obsidian into a powerful threat intelligence workspace:

### 🔐 AI-Powered Features (Premium License Required)

- 🤖 **AI-Powered Q&A**: Ask natural language questions about your investigation notes and get contextual answers
- 🔍 **Entity Extraction**: Automatically identify and create structured entities (people, companies, locations, events, etc.) from your research
- 🕵️ **Dark Web Investigation**: Conduct automated searches across 15+ dark web engines via Tor
- 📊 **Report Generation**: Generate comprehensive threat intelligence reports with AI assistance
- 🔗 **Relationship Detection**: Automatically identify connections between entities

### 🆓 Free Visualization Features (No License Required)

- 🕸️ **Entity Graph View**: Build visual graphs showing connections between threat actors, infrastructure, and campaigns
- 📅 **Timeline View**: Visualize events chronologically for incident timeline analysis
- 🗺️ **Map View**: Display locations geographically using interactive maps
- 📝 **Manual Entity Creation**: Create and manage entities manually
- 🗂️ **Note Organization**: Structured folder system for all entity types

---

## 📋 Prerequisites

Before using this template, ensure you have:

1. **Obsidian** installed (version 1.0.0 or higher)
   - Download from: [https://obsidian.md](https://obsidian.md)
2. **Git** (for cloning the repository with submodules)
   - Windows: [Git for Windows](https://git-scm.com/download/win)
   - macOS: Install via Homebrew (`brew install git`) or [download installer](https://git-scm.com/download/mac)
   - Linux: Install via package manager (`sudo apt install git` or `sudo yum install git`)
3. **Premium License Key** for OSINT Copilot (for AI features)
   - Purchase at: [https://osint-copilot.com](https://osint-copilot.com)
   - Free visualization features work without a license

---

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

![OSINT Copilot Settings](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Obsidian%20settings.png)

1. Open Obsidian **Settings** (gear icon in bottom-left)
2. Navigate to **Community Plugins** → **OSINT Copilot**
3. Enter your **Premium License Key** in the "Report API Key" field
4. Configure optional settings:
   - **Entity Base Path**: Folder where entities are created (default: `OSINTCopilot`)
   - **Report Output Directory**: Where reports are saved (default: `Reports`)
   - **Conversation Folder**: Chat history location (default: `.osint-copilot/conversations`)
   - **Max Notes**: Number of notes to include for context (default: 10)
5. Click **Save**

> **Note:** The plugin is already installed in this template as a git submodule. Your `data.json` file (containing your API key) is automatically excluded from git commits for security.

### Step 4: Start Investigating!

![OSINT Copilot Tools](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20tools%20pallete%20left%20bar.png)

1. Open the **OSINT Copilot** panel (click the shield icon in the left sidebar)
2. Familiarize yourself with the interface:
   - **Chat interface** for Q&A, reports, and dark web searches
   - **Graph View** icon for visualizing entity relationships
   - **Timeline View** for chronological event analysis
   - **Map View** for geographic visualization
3. Try the example workflows:
   - Ask questions about the example reports in the `Reports/` folder
   - Explore the entity graph view to see example entities
   - Create your first entity using the entity creation tools

![Report Options](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20report%20options%20%28report%2C%20darkweb%2C%20lookup%29.png)

The plugin provides four operating modes:
- **🔍 Lookup Mode**: Query your vault notes with AI assistance (default)
- **🕵️ Dark Web Mode**: Search dark web sources via Tor
- **📄 Report Mode**: Generate comprehensive threat reports
- **🏷️ Entity Mode**: Extract entities from text (can combine with other modes)

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

---

## 📖 Core Features & Usage

### 1. Vault Q&A (Lookup Mode)

**Purpose**: Ask natural language questions about your research notes and receive AI-powered answers with source citations.

**How to Use**:
1. Enable **🔍 Lookup** mode (default)
2. Type your question in the chat input
3. The plugin indexes your vault, extracts relevant entities, and generates a contextual answer
4. View the response with clickable links to source notes

**Example Queries**:
```
What do we know about APT29's infrastructure?
Summarize the IOCs from the SolarWinds investigation
What TTPs are associated with Lazarus Group?
```

**Response Format**:
- AI-generated answer based on your notes
- "Referenced notes" section with clickable links
- Real-time streaming for faster feedback

---

### 2. Entity Graph View

![Entity Graph](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Generated%20entites%20graph%20view.png)

**Purpose**: Visualize relationships between entities (threat actors, infrastructure, campaigns) as an interactive graph.

**Accessing the Graph**:
- **Command Palette**: "OSINT Copilot: Open Graph View"
- **Ribbon**: Click the graph icon

**Supported Entity Types**:

| Type | Color | Use Case |
|------|-------|----------|
| Person | Blue | Threat actors, researchers, contacts |
| Company | Green | Organizations, APT groups |
| Event | Orange | Incidents, campaigns, attacks |
| Location | Purple | Geographic locations, countries |
| Email | Cyan | Email addresses |
| Phone | Pink | Phone numbers |
| Username | Yellow | Online handles, aliases |
| Vehicle | Brown | Vehicles (for physical investigations) |
| Website | Teal | Domains, URLs, C2 infrastructure |
| Evidence | Red | Digital evidence, artifacts |
| Image | Magenta | Screenshots, photos |
| Text | Gray | Text snippets, notes |

**Graph Interactions**:
- **Click** an entity to view its note
- **Drag** to reposition nodes
- **Box Select** to select multiple entities
- **Right-click** for context menu options
- **Zoom/Pan** with mouse wheel and drag

**Creating Entities**:

![Create Entity](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20graph%20ivew%20create%20entity.png)

1. Click **"+ Create Entity"** in Graph View
2. Select entity type (Person, Company, Location, etc.)
3. Fill in the entity properties
4. The entity is automatically saved in the appropriate folder

![Edit Entity](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Edit%20entity%28company%29%20.png)

**Entity Structure**:
- **Frontmatter**: Structured metadata (ID, type, properties)
- **Properties Section**: Key-value pairs
- **Relationships Section**: Links to related entities
- **Notes Section**: Free-form analysis

---

### 3. Dark Web Investigation

**Purpose**: Conduct automated searches across 15+ dark web engines via Tor to find threat intelligence.

**How to Use**:
1. Enable **🕵️ Dark Web** mode
2. Enter your investigation query
3. Wait for results (typically 2-3 minutes)
4. Review the AI-generated summary

**Example Queries**:
```
Find mentions of "company-name" data breach
Search for leaked credentials related to domain.com
Investigate ransomware group "LockBit" recent activity
```

**What Happens Behind the Scenes**:
1. Query is sent to the OSINT Copilot API
2. Tor-based searches across dark web engines
3. Results are collected and analyzed
4. AI generates a summary report
5. Report is saved to your vault

**Progress Tracking**:
- Real-time progress bar showing search status
- Engine count and results found
- Estimated completion time

> **Note**: Dark web investigations consume quota. Check your usage at [osint-copilot.com/dashboard](https://osint-copilot.com/dashboard/)

---

### 4. Report Generation

![Example Report](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Example%20report.png)

**Purpose**: Generate comprehensive threat intelligence reports using AI and web research.

**How to Use**:
1. Enable **📄 Report** mode
2. Describe the report you want
3. Wait for generation (shows progress and intermediate results)
4. Report is automatically saved to your vault

**Example Prompts**:
```
Generate a threat actor profile for APT28
Create an IOC report for the recent Log4j exploitation campaign
Write a vulnerability assessment for CVE-2024-XXXX
```

**Report Features**:
- Structured markdown format
- Automatic file naming with timestamps
- Opens automatically after generation
- Can combine with Entity Mode to extract entities from the report

![Report with Note](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Example%20report%20with%20the%20note.png)

---

### 5. Entity Extraction

![Generated Entities](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Generated%20entities%20and%20relationships%20in%20the%20chat.png)

**Purpose**: Automatically extract structured entities from any text and create linked notes.

**Two Ways to Use**:

**A. Entity-Only Mode** (All main modes OFF, Entity Mode ON):
- Paste raw text directly into the chat
- AI extracts all entities and relationships
- Creates entity notes automatically

**B. Combined Mode** (Any main mode + Entity Mode ON):
- Perform a lookup, dark web search, or report generation
- Entities are automatically extracted from the AI response
- Creates entity notes linked to your research

**Extracted Information**:
- Entity type and properties
- Relationships between entities (e.g., "director_of", "controls_wallet")
- Confidence scores for connections

**Relationship Types**:

![Create Connection](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20create%20connection.png)

The plugin supports FollowTheMoney relationship types:

**Person → Company:**
- `director_of` - Board member or director
- `shareholder_of` - Equity holder
- `beneficial_owner_of` - Ultimate beneficial owner
- `employee_of` - Employee or contractor

**Company → Company:**
- `subsidiary_of` - Parent-subsidiary relationship
- `partner_of` - Business partnership
- `supplier_to` - Supply chain relationship

**Entity → Location:**
- `registered_in` - Legal registration
- `operates_in` - Business operations

**Person ↔ Person:**
- `associate_of` - Professional or personal association
- `family_of` - Family relationship

![Edit Connection](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Edit%20connection.png)

---

### 6. Timeline View

![Timeline View](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Timeline%20view.png)

**Purpose**: Visualize events chronologically for incident timeline analysis.

**Accessing Timeline**:
- **Command Palette**: "OSINT Copilot: Open Timeline View"

**Features**:
- Displays Event entities with dates
- Color-coded by entity type
- Click events to open associated notes
- Zoom and pan through time periods

**Best For**:
- Incident timelines
- Campaign tracking
- Attack sequence analysis

---

### 7. Map View

![Map View](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20map%20view.png)

**Purpose**: Visualize Location entities geographically using interactive maps.

**Accessing Map**:
- **Command Palette**: "OSINT Copilot: Open Map View"

**Features**:
- Displays Location entities with coordinates
- Interactive markers
- Click to view location details
- Zoom and pan controls
- Automatic geocoding for addresses

![Location Example](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/screenshots/Copilot%20Location%20note%20example.png)

**Best For**:
- Geographic threat analysis
- Infrastructure mapping
- Physical security investigations

---

## 💼 Workflow Examples

### Example 1: Investigating a Threat Actor

**Scenario**: You need to research APT29 (Cozy Bear) for a threat briefing.

**Steps**:

1. **Gather Initial Intelligence**
   - Enable **🔍 Lookup** + **🏷️ Entities** modes
   - Query: "What do we know about APT29?"
   - Review AI response and auto-created entities

2. **Conduct Dark Web Research**
   - Switch to **🕵️ Dark Web** mode
   - Query: "APT29 Cozy Bear recent operations 2024"
   - Wait for results and review summary

3. **Generate Report**
   - Switch to **📄 Report** mode
   - Prompt: "Generate a comprehensive threat actor profile for APT29 including TTPs, infrastructure, and recent campaigns"
   - Review and edit the generated report

4. **Visualize Relationships**
   - Open Graph View
   - Explore connections between APT29 and related entities
   - Identify infrastructure patterns

### Example 2: IOC Analysis

**Scenario**: You received a list of suspicious IPs and domains to investigate.

**Steps**:

1. **Extract Entities**
   - Enable **🏷️ Entity-Only** mode (all main modes OFF)
   - Paste your IOC list:
     ```
     Suspicious IPs: 192.168.1.100, 10.0.0.50
     Domains: malware-c2.evil.com, phishing-site.bad.org
     Email: attacker@darkweb.onion
     ```
   - Entities are automatically created

2. **Research Each IOC**
   - Enable **🔍 Lookup** mode
   - Query: "What do we know about malware-c2.evil.com?"
   - Cross-reference with your existing notes

3. **Check Dark Web**
   - Enable **🕵️ Dark Web** mode
   - Query: "Find mentions of 192.168.1.100 or malware-c2.evil.com"
   - Review any dark web references

4. **Document Findings**
   - Generate a report summarizing your analysis
   - All entities are linked in your vault

### Example 3: Incident Response Documentation

**Scenario**: Document a security incident as it unfolds.

**Steps**:

1. **Create Event Entity**
   - Use Entity Mode to create an Event for the incident
   - Include date, description, and initial findings

2. **Link Related Entities**
   - As you identify IOCs, create entities
   - Relationships are automatically tracked

3. **Build Timeline**
   - Open Timeline View
   - Visualize incident progression
   - Identify attack sequence

4. **Generate Incident Report**
   - Use Report Mode with your findings
   - Prompt: "Generate an incident report for the ransomware attack on [date] including timeline, IOCs, and remediation steps"

---

## 🔄 Updating the Plugin

The OSINT Copilot plugin is included as a **git submodule** that tracks the `main` branch. To update to the latest version:

```bash
# Update the plugin submodule to the latest version from main branch
git submodule update --remote .obsidian/plugins/Obsidian-OSINT-Copilot-plugin

# Commit the update (optional - if you want to lock to this version)
git add .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git commit -m "Update OSINT Copilot plugin to latest version"
```

Alternatively, you can update all submodules at once:
```bash
git submodule update --remote
```

> **Note:** The submodule is configured to track the `main` branch, so `git submodule update --remote` will always fetch the latest commit from the plugin's main branch.

Then reload Obsidian or restart the app to apply the updates.

---

## 🔧 Troubleshooting

### Plugin Not Appearing

**Problem**: OSINT Copilot doesn't show up in the plugin list.

**Solutions**:
1. Ensure you cloned with `--recursive` flag or ran `git submodule update --init --recursive`
2. Check that the plugin files exist in `.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/`
3. Verify `main.js`, `manifest.json`, and `styles.css` are present
4. Restart Obsidian
5. Go to Settings → Community Plugins → Click "Reload"

### License Key Not Working

**Problem**: "Invalid API key" error when trying to use AI features.

**Solutions**:
1. Verify your license key at [osint-copilot.com/dashboard](https://osint-copilot.com/dashboard/)
2. Ensure there are no extra spaces when pasting the key
3. Check that your subscription is active
4. Click "Test Connection" in settings to verify

### Entities Not Being Created

**Problem**: Entity extraction doesn't create entity files.

**Solutions**:
1. Check that Entity Mode (🏷️) is enabled
2. Verify the Entity Base Path exists in your vault
3. Ensure you have write permissions in the vault folder
4. Check the Obsidian console (Ctrl/Cmd + Shift + I) for errors

### Dark Web Search Timing Out

**Problem**: Dark web searches fail or timeout.

**Solutions**:
1. Dark web searches can take 2-5 minutes - be patient
2. Check your internet connection
3. Verify your license has remaining quota
4. Try a more specific search query

### Graph View Not Showing Entities

**Problem**: Graph view is empty or missing entities.

**Solutions**:
1. Ensure entities have been created in the Entity Base Path
2. Check that entity files have proper YAML frontmatter
3. Verify entity files have the `entity_type` property
4. Reload the graph view

### Submodule Issues

**Problem**: Plugin folder is empty or outdated.

**Solutions**:
```bash
# Initialize submodules if not done
git submodule update --init --recursive

# Update to latest version
git submodule update --remote

# If still having issues, reset the submodule
git submodule deinit -f .obsidian/plugins/Obsidian-OSINT-Copilot-plugin
git submodule update --init --recursive
```

### Performance Issues

**Problem**: Plugin is slow or unresponsive.

**Solutions**:
1. Reduce "Max Notes" setting in plugin settings (try 5-10)
2. Close unused views (Graph, Timeline, Map)
3. Clear conversation history if it's very large
4. Restart Obsidian

---

## 📚 Additional Resources

- **Plugin Repository**: [https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin](https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin)
- **Purchase License**: [https://osint-copilot.com](https://osint-copilot.com)
- **License Dashboard**: [https://osint-copilot.com/dashboard](https://osint-copilot.com/dashboard/)
- **FollowTheMoney Schema**: [https://followthemoney.tech](https://followthemoney.tech)
- **Obsidian Community**: [https://obsidian.md/community](https://obsidian.md/community)

---

## 🛡️ Security & Privacy

### Important Security Notes

- **Never commit your API key**: The `.gitignore` file is configured to exclude `data.json` (which contains your license key)
- **Investigation data**: By default, the `Reports/` and `OSINTCopilot/` folders are tracked. If your investigations contain sensitive data, uncomment the relevant lines in `.gitignore`
- **Conversation history**: The `.osint-copilot/conversations/` folder is excluded from version control
- **Local processing**: Entity graph, timeline, and map views work entirely offline (no API calls)
- **API usage**: Only AI features (Q&A, entity extraction, dark web, reports) send data to the OSINT Copilot API

### Before Publishing Your Own Investigations

If you fork this template for your own investigations:

1. Review `.gitignore` to ensure sensitive data is excluded
2. Remove or sanitize example reports in `Reports/`
3. Clear example entities in `OSINTCopilot/`
4. Never commit your `data.json` file with your API key
5. Consider encrypting sensitive vaults using Obsidian's built-in encryption or third-party tools

### Data Privacy

- **What's sent to the API**: When using AI features, your queries and relevant vault content are sent to the OSINT Copilot API
- **What's NOT sent**: Free features (Graph, Timeline, Map) process data entirely locally
- **Data retention**: Check the privacy policy at [osint-copilot.com](https://osint-copilot.com) for API data retention details

---

## 💡 Tips and Best Practices

### Organizing Your Investigation

1. **Use descriptive entity names**: Instead of "Person 1", use "John Doe - APT29 Operator"
2. **Tag entities**: Use the notes section to add tags like `#apt29 #russia #malware`
3. **Link liberally**: Create relationships between entities to build a knowledge graph
4. **Date everything**: Always include dates in Event entities for timeline analysis

### Effective Querying

1. **Be specific**: "What infrastructure does APT29 use?" is better than "Tell me about APT29"
2. **Use entity names**: Reference entities by name for better context retrieval
3. **Combine modes**: Use Entity Mode with Report Mode to auto-extract entities from generated reports
4. **Iterate**: Start with broad queries, then drill down with specific follow-ups

### Entity Management

1. **Standardize naming**: Use consistent formats (e.g., "Company Name Inc." vs "Company Name")
2. **Fill in properties**: More properties = better search and filtering
3. **Use relationships**: Connect entities to show the full picture
4. **Regular cleanup**: Periodically review and merge duplicate entities

### Report Generation

1. **Provide context**: Include background information in your prompts
2. **Specify format**: Request specific sections (e.g., "Include TTPs, IOCs, and timeline")
3. **Review and edit**: AI-generated reports should be reviewed and fact-checked
4. **Save iterations**: Keep multiple versions as you refine your investigation

### Performance Optimization

1. **Limit context**: Keep "Max Notes" setting reasonable (5-15)
2. **Close unused views**: Graph, Timeline, and Map views consume resources
3. **Archive old investigations**: Move completed investigations to separate vaults
4. **Regular maintenance**: Clear old conversation history periodically

### Collaboration

1. **Use git**: Track changes to your investigation with git commits
2. **Branch per investigation**: Create git branches for different cases
3. **Document sources**: Always note where information came from
4. **Review together**: Use Obsidian's sync features for team collaboration

---

## 🤝 Contributing

This template is maintained by **Probe Point Analytics LLC**. We welcome feedback and contributions!

### Reporting Issues

- **Template Issues**: Open an issue in this repository
- **Plugin Issues**: Open an issue at [https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin](https://github.com/Probe-Point-Analytics-LLC/Obsidian-OSINT-Copilot-plugin)

### Suggesting Improvements

- Feature requests for the template (folder structure, examples, documentation)
- Workflow examples and use cases
- Documentation improvements

### Contributing Code

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This template is provided as-is for use with the OSINT Copilot plugin.

- **Template**: Free to use and modify
- **OSINT Copilot Plugin**: Requires a separate premium license for AI-powered features
  - Free features (Graph, Timeline, Map) available without license
  - AI features (Q&A, Entity Extraction, Dark Web, Reports) require license
  - Purchase at: [https://osint-copilot.com](https://osint-copilot.com)

---

## 🙏 Acknowledgments

- **FollowTheMoney**: Entity schema and relationship types from [followthemoney.tech](https://followthemoney.tech)
- **Obsidian**: The knowledge base platform that makes this possible
- **Community**: Thanks to all OSINT researchers and SOC analysts who provide feedback

---

## 📞 Support

Need help? Here's how to get support:

1. **Documentation**: Check this README and the [User Guide](.obsidian/plugins/Obsidian-OSINT-Copilot-plugin/USER_GUIDE.md)
2. **Troubleshooting**: See the [Troubleshooting](#-troubleshooting) section above
3. **License Issues**: Contact support via [osint-copilot.com](https://osint-copilot.com)
4. **Bug Reports**: Open an issue on GitHub
5. **Feature Requests**: Open an issue with the "enhancement" label

---

**Ready to start your OSINT investigation?** 🚀

Open this vault in Obsidian, configure your license key, and explore the example workflows. Happy investigating!

---

*Last updated: 2026-01-02*

