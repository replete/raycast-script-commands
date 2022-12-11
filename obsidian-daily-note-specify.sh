#!/bin/bash

# Note: Obsidian v0.8.15+ required
# Install via: 1) https://obsidian.md 2) brew install --cask obsidian

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Obsidian: Create Daily Note (specify vault)
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/obsidian.png
# @raycast.argument1 { "type": "text", "placeholder": "Vault", "optional": true, "percentEncoded": true}
# @raycast.argument2 { "type": "text", "placeholder": "Content", "optional": true, "percentEncoded": true}
# @raycast.packageName Replete Raycast

# Documentation:
# @raycast.description Creates a new Obsidian entry titled YYYY-MM-DD (append on newline if daily entry already exists) then open entry in Obsidian. Uses vault specified
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'odv' as an alias within Raycast Extensions settings

DATE=$(date +%Y-%m-%d)

open "obsidian://new?vault=${1}&name=${DATE}&content=%0A${2}&append"
