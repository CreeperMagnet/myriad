# Checks the items in the hopper below the echoing hourglass

data remove storage myriad:temp root

data modify storage myriad:temp root.macro_input.temp_drop_item set from entity @s item.components."minecraft:custom_data".drop_item

execute store result score @s myriad.dummy run function myriad:technical/macros/loot/insert_with_return_value with storage myriad:temp root.macro_input.temp_drop_item
execute if score @s myriad.dummy matches 0 run return fail

return 1