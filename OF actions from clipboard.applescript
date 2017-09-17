-- import a text list from clipboard into OF as new actions
set warningDialog to display dialog "This script will transfer the contents of the clipboard to your OmniFocus Inbox as new action items" buttons {"Cancel", "OK"} default button 2 with icon 2
if button returned of warningDialog is equal to "Cancel" then return

tell application "OmniFocus"
	tell default document
		set blockList to paragraphs of the contents of (the clipboard)
		repeat with nextItem in blockList
			if nextItem is not equal to "" then make new inbox task with properties {name:nextItem}
		end repeat
	end tell
end tell
