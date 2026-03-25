# Activates with a specific sapling type input


# Update observers
data modify storage myriad:temp root.block_data set from block ~ ~ ~
setblock ~ ~ ~ minecraft:stone
setblock ~ ~ ~ minecraft:furnace
data modify block ~ ~ ~ {} merge from storage myriad:temp root.block_data

# Make sure saplink gets proper feedback
data modify storage myriad:temp root.success set value 1b
execute if score @s myriad.dummy2 matches 1.. run return 0

# Update comparator output
loot replace block ~ ~ ~ container.0 loot myriad:technical/creaking_connector_comparator_output
item replace block ~ ~ ~ container.1 with minecraft:stick
data modify storage myriad:temp root.loot_item set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage myriad:temp root.loot_item.Slot set value 1b
data modify block ~ ~ ~ Items[{Slot:1b}] set from storage myriad:temp root.loot_item
$function myriad:block/creaking_connector/power/comparator_output/$(wood_type)

# VFX
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_all","values":[true]}}
playsound myriad:block.creaking_connector.turn_on block @a[distance=..16] ~ ~0.5 ~

# Cooldown
data modify storage myriad:temp root.success_cooldown set value 1b
scoreboard players set @s myriad.dummy2 20