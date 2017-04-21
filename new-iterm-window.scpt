(* 
 * New-iTerm-Window.scpt
 * 
 * Intended for use with QuickSilver
 *  I mapped option-y to running this script to create
 *  a new iTerm window on the current workspace
 *
 * Based on much Googling - very little "original" code here
 *   Comments/Suggestions to brad.lhotsky@gmail.com
 *)
if isAppRunning("iTerm") then
	tell application "iTerm"
		set myterm to (make new terminal)
		tell myterm
			set mysession to (make new session at the end of sessions)
			tell mysession
				exec command "/bin/bash -l"
			end tell
		end tell
		activate
	end tell
else
	activate application "iTerm"
end if

(* Code from Dweller on
 *  http://codesnippets.joyent.com/posts/show/1124
 *)
on isAppRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end isAppRunning