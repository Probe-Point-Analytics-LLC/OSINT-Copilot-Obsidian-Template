#!/bin/bash

# OSINT Copilot Template Setup Script
# This script helps you set up the OSINT Copilot Obsidian vault template

set -e

echo "=========================================="
echo "OSINT Copilot Template Setup"
echo "=========================================="
echo ""

# Check if git submodules are initialized
if [ ! -f ".obsidian/plugins/Obsidian-OSINT-Copilot-plugin/manifest.json" ]; then
    echo "⚠️  Plugin submodule not initialized"
    echo "Initializing git submodules..."
    git submodule update --init --recursive
    echo "✓ Submodules initialized"
    echo ""
fi

# Check if data.json already exists
if [ -f ".obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json" ]; then
    echo "✓ Configuration file already exists"
    echo "  Location: .obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json"
else
    # Check if template exists in the plugin repo
    if [ -f ".obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json.template" ]; then
        echo "Creating configuration file from template..."
        cp .obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json.template \
           .obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json
        echo "✓ Configuration file created"
    else
        echo "⚠️  Template file not found in plugin repository"
        echo "Creating default configuration file..."
        cat > .obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json << 'EOF'
{
  "systemPrompt": "You are a vault assistant. Answer questions clearly and concisely based on the provided notes. Cite note paths in-line where useful.",
  "maxNotes": 15,
  "reportApiKey": "YOUR_LICENSE_KEY_HERE",
  "reportOutputDir": "Reports",
  "graphApiUrl": "https://api.osint-copilot.com",
  "entityBasePath": "OSINTCopilot",
  "enableGraphFeatures": true,
  "autoRefreshGraph": true,
  "autoOpenGraphOnEntityCreation": false,
  "conversationFolder": ".osint-copilot/conversations"
}
EOF
        echo "✓ Default configuration file created"
    fi
    echo ""
    echo "⚠️  IMPORTANT: You need to add your license key!"
    echo "   1. Open Obsidian and load this vault"
    echo "   2. Go to Settings → Community Plugins → OSINT Copilot"
    echo "   3. Enter your license key in the 'Report API Key' field"
    echo "   4. Purchase a license at: https://osint-copilot.com"
fi

echo ""
echo "=========================================="
echo "Setup Complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Open this folder in Obsidian"
echo "2. Click 'Trust author and enable plugins' when prompted"
echo "3. Configure your license key (see above)"
echo "4. Start investigating!"
echo ""
echo "For more information, see README.md"
echo ""

