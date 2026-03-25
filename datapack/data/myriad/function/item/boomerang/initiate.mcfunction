# Initiate the boomerang's flight based on the storage values given

data merge entity @s {Tags:["myriad.item_display","myriad.boomerang","smithed.entity"],interpolation_duration:3,teleport_duration:1,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:{axis:[1.0f,0.0f,0.0f],angle:-1.57079632679f},scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:boomerang"}},view_range:4.0f}
data modify entity @s item.components."minecraft:custom_data".myriad.item set from storage myriad:temp root.boomerang.item
data modify entity @s item.components."minecraft:enchantments" set from storage myriad:temp root.boomerang.item.components."minecraft:enchantments"
data modify entity @s item.components."minecraft:custom_data".myriad.macro_input.slot set from storage myriad:temp root.boomerang.slot
data modify entity @s item.components."minecraft:custom_data".myriad.macro_input.UUID set from storage myriad:temp root.boomerang.UUID
data modify entity @s item.components."minecraft:custom_data".myriad.gamemode set from storage myriad:temp root.boomerang.gamemode
data modify entity @s item.components."minecraft:custom_data".myriad.macro_input.fire set value "0"
tp @s ~ ~ ~ ~ ~