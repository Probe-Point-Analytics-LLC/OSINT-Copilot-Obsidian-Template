#!/bin/bash

# OSINT Copilot Template Setup Script
# This script helps you set up the OSINT Copilot Obsidian vault template

set -e

echo "=========================================="
echo "OSINT Copilot Template Setup"
echo "=========================================="
echo ""

# Check if data.json already exists
if [ -f ".obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json" ]; then
    echo "✓ Configuration file already exists"
    echo "  Location: .obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json"
else
    echo "Creating configuration file from template..."
    cp .obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json.template \
       .obsidian/plugins/Obsidian-OSINT-Copilot-plugin/data.json
    echo "✓ Configuration file created"
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

