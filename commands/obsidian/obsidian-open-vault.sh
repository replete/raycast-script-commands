#!/bin/bash

# Note: Obsidian v0.8.15+ required
# Install via: 1) https://obsidian.md 2) brew install --cask obsidian

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Obsidian: Open Vault
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/obsidian.png
# @raycast.argument1 { "type": "text", "placeholder": "Vault name" }
# @raycast.packageName Obsidian

# Documentation:
# @raycast.description Open Obsidian Vault
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'ov' as an alias within Raycast Extensions settings


open "obsidian://open?vault=$1"