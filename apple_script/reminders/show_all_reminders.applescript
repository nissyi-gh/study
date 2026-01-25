tell application "Reminders"
    set output to ""

    repeat with aList in lists
        set listName to name of aList
        set output to output & "# " & listName & linefeed
        set reminderNames to name of (reminders of aList whose completed is false)

        repeat with reminderName in reminderNames
            set output to output & "- [ ] " & reminderName & linefeed
        end repeat
        set output to output & linefeed
    end repeat
    return output
end tell
