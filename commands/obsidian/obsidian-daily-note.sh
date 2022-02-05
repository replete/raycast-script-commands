#!/bin/bash

# Note: Obsidian v0.8.15+ required
# Install via: 1) https://obsidian.md 2) brew install --cask obsidian

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Obsidian: Create Daily Note
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/obsidian.png
# @raycast.argument1 { "type": "text", "placeholder": "Vault", "optional": false, "percentEncoded": true}
# @raycast.argument2 { "type": "text", "placeholder": "Content", "optional": true, "percentEncoded": true}
# @raycast.packageName Obsidian

# Documentation:
# @raycast.description Create a new Obsidian entry inside specified vault with optional title
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'od' as an alias within Raycast Extensions settings

DATE=$(date +%Y-%m-%d)

open "obsidian://new?vault=${1}&name=${DATE}&content=${2}"
