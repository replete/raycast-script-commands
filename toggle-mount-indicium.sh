#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Mount/Unmount INDICIUM
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ./images/indicium.png
# @raycast.packageName Replete Raycast

# Documentation:
# @raycast.description Mount or unmount volume INDICIUM
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'ind' as an alias within Raycast Extensions settings

diskutil $([ -d "/Volumes/INDICIUM" ] && echo "unmount" || echo "mount") /dev/disk3s1