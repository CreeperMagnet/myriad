# Changes the state of a gobblerift to be ready for juice

execute if entity @s[tag=myriad.gobblerift.can_reproduce] run loot spawn ~ ~1.2 ~ loot myriad:items/gobblerift_seeds
function myriad:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "riftjuice_ready"
tag @s add myriad.gobblerift.juice_ready