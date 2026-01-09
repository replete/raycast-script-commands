#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Finder Visor
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📁
# @raycast.packageName Replete Raycast

# Documentation:
# @raycast.description Toggle Finder visibility with visor-style behavior
# @raycast.author Phil Ricketts
# @raycast.authorURL https://github.com/replete

osascript -l AppleScript <<'EOF'
use framework "AppKit"
use scripting additions

on run
	tell application "System Events"
		set finderIsVisible to visible of process "Finder"
	end tell

	if finderIsVisible then
		tell application "System Events" to set visible of process "Finder" to false
	else
		-- Get mouse location and screen info using AppleScriptObjC
		set mouseAndScreenInfo to getMouseScreenBounds()
		set screenX to item 1 of mouseAndScreenInfo
		set screenY to item 2 of mouseAndScreenInfo
		set screenWidth to item 3 of mouseAndScreenInfo
		set screenHeight to item 4 of mouseAndScreenInfo

		set windowHeight to 500

		tell application "Finder"
			activate
			if (count of windows) is 0 then
				make new Finder window to home
				set sidebar width of window 1 to 200
				set current view of window 1 to column view
				set bounds of window 1 to {screenX, screenY + screenHeight - windowHeight, screenX + screenWidth, screenY + screenHeight}
			else
				set oldestWindow to window 1
				set oldestID to id of window 1

				repeat with i from 1 to count of windows
					try
						set currentID to id of window i
						if currentID < oldestID then
							set oldestID to currentID
							set oldestWindow to window i
						end if
					end try
				end repeat

				set index of oldestWindow to 1

				set currentBounds to bounds of oldestWindow
				set windowHeight to (item 4 of currentBounds) - (item 2 of currentBounds)

				set bounds of oldestWindow to {screenX, screenY + screenHeight - windowHeight, screenX + screenWidth, screenY + screenHeight}
			end if
		end tell
	end if
end run

on getMouseScreenBounds()
	-- Get mouse location using NSEvent (in NSScreen coordinates, origin bottom-left)
	set mouseLoc to current application's NSEvent's mouseLocation()
	set mouseX to x of mouseLoc
	set mouseY to y of mouseLoc

	-- Get all screens
	set allScreens to current application's NSScreen's screens()

	-- Get main screen height for coordinate conversion
	-- frame() returns {{originX, originY}, {width, height}}
	set mainFrame to (item 1 of allScreens)'s frame()
	set mainScreenHeight to item 2 of item 2 of mainFrame

	-- Find which screen contains the mouse (in NSScreen coordinates)
	repeat with scr in allScreens
		set scrFrame to scr's frame()
		set scrX to item 1 of item 1 of scrFrame
		set scrY to item 2 of item 1 of scrFrame
		set scrW to item 1 of item 2 of scrFrame
		set scrH to item 2 of item 2 of scrFrame

		-- Check if mouse is in this screen (NSScreen coords, bottom-left origin)
		if mouseX ≥ scrX and mouseX < (scrX + scrW) and mouseY ≥ scrY and mouseY < (scrY + scrH) then
			-- Convert to window coordinate system (top-left origin)
			set scrTopY to mainScreenHeight - scrY - scrH
			return {scrX as integer, scrTopY as integer, scrW as integer, scrH as integer}
		end if
	end repeat

	-- Fallback to main screen
	return {0, 0, 1920, 1080}
end getMouseScreenBounds
EOF
