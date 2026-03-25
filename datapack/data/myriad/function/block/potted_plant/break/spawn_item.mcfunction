# This function runs as the item display

data modify storage myriad:temp root.macro_input.item set from entity @s item.components."minecraft:custom_data".item
execute unless data storage myriad:temp root.macro_input.item.components run data modify storage myriad:temp root.macro_input.item.components set value {}
function myriad:technical/macros/loot/spawn with storage myriad:temp root.macro_input.item

