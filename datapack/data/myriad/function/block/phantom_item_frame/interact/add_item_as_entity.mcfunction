# Edits a phantom item frame to have an item inside

playsound myriad:entity.phantom_item_frame.add_item block @a[distance=..16]
# Set empty display invisible
execute on passengers run data modify entity @s item.components."minecraft:item_model" set value "minecraft:air"

# Display particles
execute unless entity @s[nbt=!{Facing:4b},nbt=!{Facing:5b}] run particle minecraft:mycelium ~ ~ ~ 0 0.3 0.3 0.3 100
execute unless entity @s[nbt=!{Facing:2b},nbt=!{Facing:3b}] run particle minecraft:mycelium ~ ~ ~ 0.3 0.3 0 0.3 100
execute unless entity @s[nbt=!{Facing:0b},nbt=!{Facing:1b}] run particle minecraft:mycelium ~ ~ ~ 0.3 0 0.3 0.3 100

# set rotation
scoreboard players set @s myriad.dummy2 0

tag @s add myriad.phantom_item_frame.has_item