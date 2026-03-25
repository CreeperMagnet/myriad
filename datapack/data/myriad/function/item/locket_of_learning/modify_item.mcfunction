# Modifies the item

# Set the value on the locket item based on deposit loop results
execute store result storage myriad:temp root.item.components."minecraft:custom_data".myriad.stored_points int 1 run scoreboard players get #temp_0 myriad.dummy

# Set enchantment glint if full
data modify storage myriad:temp root.item.components."minecraft:enchantment_glint_override" set value false
execute if score #temp_0 myriad.dummy matches 1395 run data modify storage myriad:temp root.item.components."minecraft:enchantment_glint_override" set value true

# Do some math to set the float values
scoreboard players set #temp_1 myriad.dummy 1395
scoreboard players operation #temp_0 myriad.dummy *= #1000 myriad.dummy

# Value = Points * 1000 / 1395 = (percentage * 1000)
# Store the value back into the item
execute store result storage myriad:temp root.item.components."minecraft:custom_model_data".floats[0] float 0.001 run scoreboard players operation #temp_0 myriad.dummy /= #temp_1 myriad.dummy

# Set the equipment value properly
data modify storage myriad:temp root.item.components."minecraft:equippable".asset_id set value "myriad:locket_of_learning/empty"
execute if score #temp_0 myriad.dummy matches 251..750 run data modify storage myriad:temp root.item.components."minecraft:equippable".asset_id set value "myriad:locket_of_learning/half_full"
execute if score #temp_0 myriad.dummy matches 751.. run data modify storage myriad:temp root.item.components."minecraft:equippable".asset_id set value "myriad:locket_of_learning/full"


# Modifies the mainhand item
function myriad:technical/macros/loot/replace with storage myriad:temp root.item
$item modify entity @s $(slot) {"function":"minecraft:set_lore","entity":"this","lore":[{"translate":"item.myriad.locket_of_learning.lore","with":[{"nbt":"root.item.components.\"minecraft:custom_data\".myriad.stored_points","storage":"myriad:temp","plain":true},{"text":"1395"}],"color":"gray","italic":false}],"mode":"replace_section","offset":0}