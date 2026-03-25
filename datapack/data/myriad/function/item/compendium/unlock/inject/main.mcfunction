# Add the entry and find all compendium items

execute if entity @s[tag=myriad.tag] run return 0

# Important for multiplayer compat
data modify storage myriad:temp root.manage_data.uuid set from entity @s UUID

# Add the entry to the player's list of unlocked entries
function myriad:item/compendium/data/get/main
$execute unless data storage myriad:temp root.compendium{unlocked_entries:["$(entry_name)"]} run data modify storage myriad:temp root.compendium.unlocked_entries append from storage myriad:temp root.start_injection.entry_name
function myriad:item/compendium/data/set/main
# Return if the player doesn't have their compendium in unlockable mode
execute if entity @s[tag=!myriad.unlockable_compendium] run return 0

# Remove the temporary NBT for compendium data, which is used to easily update subsequent items
data remove storage myriad:temp root.compendium_tag

# Loop through all the player's compendiums
function myriad:item/compendium/find_item/from/add_entry

# Remove myriad.success, which is used to mark that one compendium already has been updated
tag @s remove myriad.success
# Remove myriad.invalid_page, which is used to mark that an invalid JSON page has been found
tag @s remove myriad.invalid_page
