#!/bin/bash

# Note: https://github.com/p00ya/displaymode required (I put it into ~/bin)

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Set Refresh Rate
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ./images/refreshrate.png
# @raycast.argument1 { "type": "text", "placeholder": "hz", "optional": false}
# @raycast.packageName Replete Raycast

# Documentation:
# @raycast.description Set Monitor refresh rate
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

# Recommendations:
# Add 'rr' as an alias within Raycast Extensions settings

# Assumes only one display connected !

if ! type "./bin/displaymode" > /dev/null; then
    echo "displaymode executable not found in ./bin. Please install displaymode CLI utility from https://github.com/p00ya/displaymode"
    exit 1
fi
./bin/displaymode t 3840 2160 @${1}
