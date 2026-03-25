# Specific code for only if the gobblerift is not a seedling

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.id set from entity @s item.components."minecraft:custom_data".id
function myriad:block/gobblerift/array_management/remove with storage myriad:temp root.macro_input
execute if data entity @s CustomName run loot spawn ~ ~ ~ loot myriad:blocks/gobblerift/named
execute unless data entity @s CustomName run loot spawn ~ ~ ~ loot myriad:blocks/gobblerift/unnamed