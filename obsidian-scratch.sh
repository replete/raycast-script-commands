#!/bin/bash

# Note: Obsidian v0.8.15+ required
# Install via: 1) https://obsidian.md 2) brew install --cask obsidian

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Obsidian: Scratch
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/obsidian.png
# @raycast.argument1 { "type": "text", "placeholder": "Content", "optional": true, "percentEncoded": true}
# @raycast.packageName Replete Raycast

# Documentation:
# @raycast.description Appends text to /Scratchpad.md in Vault. Requires Obsidian Advanced URI
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'os' as an alias within Raycast Extensions settings

DATE=$(date +%Y-%m-%d@%T)

open "obsidian://advanced-uri?vault=Vault&filepath=Scratchpad&data=%23%20${DATE}%0A${1}&mode=prepend"
