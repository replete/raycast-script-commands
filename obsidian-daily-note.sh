#!/bin/bash

# Note: Obsidian v0.8.15+ required
# Install via: 1) https://obsidian.md 2) brew install --cask obsidian

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Obsidian: Daily Note
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/obsidian.png
# @raycast.argument1 { "type": "text", "placeholder": "Content", "optional": true, "percentEncoded": true}
# @raycast.packageName Replete Raycast

# Documentation:
# @raycast.description Creates a new Obsidian entry titled YYYY-MM-DD (append if already exists) and open entry in Obsidian. Uses vault specified in config.sh 
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'od' as an alias within Raycast Extensions settings

source ./config.sh  # Load variables

DATE=$(date +%Y-%m-%d) 

open "obsidian://new?vault=${OBSIDIAN_DAILY_NOTE_VAULT}&name=${DATE}&content=%0A${1}&append"
