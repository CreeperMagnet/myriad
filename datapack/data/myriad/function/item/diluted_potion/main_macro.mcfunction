# Checks potion data and such based on macro input

data remove storage myriad:temp root
$data modify storage myriad:temp root.item set from entity @s $(slot_raw)
scoreboard players set @s myriad.dummy 0
function myriad:item/diluted_potion/attempt_effect_application
# If you didn't apply any effects, return.
execute if entity @s[scores={myriad.dummy=0}] run return 0
# Play the drink sound even if in creative mode
playsound minecraft:entity.generic.drink player @a[distance=..16] ~ ~ ~ 1 1.3
# If in creative mode, don't run the item modification code.
execute if entity @s[gamemode=creative] run return 0


## Item modification code

# Decrements the uses on the bottle
scoreboard players reset @s myriad.dummy
execute store result score @s myriad.dummy run data get storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.uses[0]
execute store result storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.uses[0] int 1 run scoreboard players remove @s myriad.dummy 1
# If there are no uses left, empty the bottle and don't run any of the rest of the code
$execute if score @s myriad.dummy matches 0 run return run item replace entity @s $(slot) with minecraft:glass_bottle

# Only increment the CMD if the uses on the bottle are >10 (instant health exception)
execute if score @s myriad.dummy matches ..9 run function myriad:item/diluted_potion/decrement_custom_model_data

# Update the item
$data modify storage myriad:temp root.item.slot set value "$(slot)"
function myriad:technical/macros/loot/replace with storage myriad:temp root.item

# Updates the "uses" lore on the item
$execute unless data storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.multiline_lore run item modify entity @s $(slot) {"function":"minecraft:set_lore","entity":"this","lore":[{"translate":"item.myriad.diluted_potion.uses","with":[{"nbt":"root.item.components.\"minecraft:custom_data\".myriad.potion.uses[0]","storage":"myriad:temp","plain":true},{"nbt":"root.item.components.\"minecraft:custom_data\".myriad.potion.uses[1]","storage":"myriad:temp","plain":true}],"color":"gray","italic":false}],"mode":"replace_section","offset":1}
$execute if data storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.multiline_lore run item modify entity @s $(slot) {"function":"minecraft:set_lore","entity":"this","lore":[{"translate":"item.myriad.diluted_potion.uses","with":[{"nbt":"root.item.components.\"minecraft:custom_data\".myriad.potion.uses[0]","storage":"myriad:temp","plain":true},{"nbt":"root.item.components.\"minecraft:custom_data\".myriad.potion.uses[1]","storage":"myriad:temp","plain":true}],"color":"gray","italic":false}],"mode":"replace_section","offset":2}