# Reset all compendium items in the player's inventory

execute store result score @s myriad.dummy run data get storage myriad:temp root.item.count

# Tag so advancements won't trigger while modifying the item
tag @s add myriad.modifying_item

execute if entity @s[tag=myriad.unlockable_compendium] run function myriad:item/modify_slot/type/loot {path:"myriad:technical/copy_count/compendium_unlockable"}
execute if entity @s[tag=!myriad.unlockable_compendium] run function myriad:item/modify_slot/type/loot {path:"myriad:technical/copy_count/compendium"}

execute if entity @s[tag=!myriad.unlockable_compendium] run tag @s remove myriad.modifying_item
execute if entity @s[tag=!myriad.unlockable_compendium] run return 1

# Set the owner separately
data modify storage myriad:temp root.macro_input.uuid set from entity @s UUID
function myriad:item/compendium/reset_item/set_owner with storage myriad:temp root.macro_input

tag @s remove myriad.modifying_item

# Update the temporary item data in storage to the newly reset compendium's data
data modify storage myriad:temp root.macro_input.slot set from storage myriad:temp root.item.Slot
function myriad:item/update_item_data with storage myriad:temp root.macro_input
