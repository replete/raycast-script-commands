
#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Record camera
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ./images/record-camera.png
# @raycast.packageName Replete Raycast

# Documentation:
# @raycast.description Start recording webcam
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'sun' as an alias within Raycast Extensions settings

/Applications/OBS.app/Contents/MacOS/OBS --profile "Camera Recording" --collection "Camera Recording" --startrecording