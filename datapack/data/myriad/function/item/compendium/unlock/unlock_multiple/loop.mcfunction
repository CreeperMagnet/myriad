# Applies injections for multiple entries

# Copy to a temporary path
data modify storage myriad:temp root.entry.name set from storage myriad:temp root.entries_to_unlock[0]

# If there are still entries to unlock, run the unlock function
execute if data storage myriad:temp root.entries_to_unlock[0] run function myriad:item/compendium/unlock/unlock_multiple/unlock with storage myriad:temp root.entry
data remove storage myriad:temp root.entries_to_unlock[0]

# Loop if there are entries left to unlock
execute if data storage myriad:temp root.entries_to_unlock[0] run function myriad:item/compendium/unlock/unlock_multiple/loop
