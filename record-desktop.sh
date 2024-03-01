
#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Record desktop
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ./images/record-desktop.png
# @raycast.packageName Replete Raycast

# Documentation:
# @raycast.description Start recording desktop
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'sun' as an alias within Raycast Extensions settings

/Applications/OBS.app/Contents/MacOS/OBS --profile "Desktop Recording" --collection "Desktop Recording" --startrecording