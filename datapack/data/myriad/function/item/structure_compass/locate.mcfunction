# Locates a structure and adds its data to the structure compass

# Create some map data, grab it, and then remove it from the item
$item modify entity @s weapon.$(slot) myriad:structure_compass/$(id)
$data modify storage myriad:temp root.map_data set from entity @s $(slot_raw)
$item modify entity @s weapon.$(slot) {"type":"set_components","components":{"!map_id":{},"!map_decorations":{}}}

# Grab the compass item
$data modify storage myriad:temp root.item set from entity @s $(slot_raw)
$data modify storage myriad:temp root.item.slot set value "weapon.$(slot)"

# Edit item stored in temp
$data merge storage myriad:temp {root:{item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:lodestone_tracker":{target:{pos:[0,60,0],dimension:"$(dimension)"},tracked:0b},"!minecraft:food":{},"!minecraft:consumable":{}}}}}
execute store result storage myriad:temp root.item.components."minecraft:lodestone_tracker".target.pos[0] int 1.0 run data get storage myriad:temp root.map_data.components."minecraft:map_decorations".+.x
execute store result storage myriad:temp root.item.components."minecraft:lodestone_tracker".target.pos[2] int 1.0 run data get storage myriad:temp root.map_data.components."minecraft:map_decorations".+.z

# Invalidate lodestone tracker if map finds nothing (set target to nothing, keep component)
execute unless data storage myriad:temp root.map_data.components."minecraft:map_id" run data remove storage myriad:temp root.item.components."minecraft:lodestone_tracker".target

# Give self the actual smoldering seeker item & reduce mainhand count
$item modify entity @s[gamemode=!creative] weapon.$(slot) myriad:reduce_count
$swing @s $(slot)
$execute unless data entity @s $(slot_raw) run return run function myriad:technical/macros/loot/replace with storage myriad:temp root.item
function myriad:technical/macros/loot/give_or_spawn_if_full with storage myriad:temp root.item