# Updates unlocked entries for outdated books

# If the player is in creative, don't run any updating code
advancement revoke @s[gamemode=creative] only myriad:technical/inventory_changed/compendium/unlockable
execute if entity @s[gamemode=creative] run return 0

advancement revoke @s[tag=myriad.modifying_item] only myriad:technical/inventory_changed/compendium/unlockable
# If this was called due to a modified item in this code, return
execute if entity @s[tag=myriad.modifying_item] run return 0

# Important for multiplayer compat
data modify storage myriad:temp root.manage_data.uuid set from entity @s UUID

# If the player isn't in unlockable compendium mode, turn their unlockable compendium into an unlocked one
execute if entity @s[tag=!myriad.unlockable_compendium] run function myriad:item/compendium/find_item/from/reset_item {id:"unlockable_compendium"}
execute if entity @s[tag=!myriad.unlockable_compendium] run advancement revoke @s only myriad:technical/inventory_changed/compendium/unlockable
execute if entity @s[tag=!myriad.unlockable_compendium] run return 0

# Remove the temporary NBT for compendium data, which is used to easily update subsequent items
data remove storage myriad:temp root.compendium_tag

# Loop through all the player's compendiums
function myriad:item/compendium/find_item/from/update_old

# Remove myriad.success, which is used to mark that one compendium already has been updated
tag @s remove myriad.success
# Remove myriad.invalid_page, which is used to mark that an invalid JSON page has been found
tag @s remove myriad.invalid_page

# Revoke the advancement that called this function
advancement revoke @s only myriad:technical/inventory_changed/compendium/unlockable
