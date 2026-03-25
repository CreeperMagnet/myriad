# Runs proper commands based on given slot and raw slot

# Put base item in storage
$data modify storage myriad:temp root.item set from entity @s $(slot_raw)
$data modify storage myriad:temp root.item.slot set value '$(slot)'
# Put the stored item in storage
data modify storage myriad:temp root.stored_item set from storage myriad:temp root.item

# Replace mainhand with map and then bring back what was previously in that slot
$loot replace entity @s $(slot) loot myriad:technical/map/weeping_eye
$data modify storage myriad:temp root.map set from entity @s $(slot_raw)
function myriad:technical/macros/loot/replace with storage myriad:temp root.stored_item

# Edit item stored in temp
data merge storage myriad:temp {root:{item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:lodestone_tracker":{target:{pos:[0,60,0],dimension:"minecraft:the_end"},tracked:0b},"!minecraft:consumable":{}}}}}
execute store result storage myriad:temp root.item.components."minecraft:lodestone_tracker".target.pos[0] int 1.0 run data get storage myriad:temp root.map.components."minecraft:map_decorations".+.x
execute store result storage myriad:temp root.item.components."minecraft:lodestone_tracker".target.pos[2] int 1.0 run data get storage myriad:temp root.map.components."minecraft:map_decorations".+.z

# Invalid lodestone tracker if map finds nothing
execute unless data storage myriad:temp root.map{id:"minecraft:filled_map"} run data remove storage myriad:temp root.item.components."minecraft:lodestone_tracker".target

# Give self the actual smoldering seeker item & reduce mainhand count
$item modify entity @s[gamemode=!creative] $(slot) myriad:reduce_count
$swing @s $(slot_short)
$execute unless data entity @s $(slot_raw) run return run function myriad:technical/macros/loot/replace with storage myriad:temp root.item
execute unless predicate myriad:entity_properties/full_inventory run return run function myriad:technical/macros/loot/give with storage myriad:temp root.item
function myriad:technical/macros/loot/spawn with storage myriad:temp root.item

