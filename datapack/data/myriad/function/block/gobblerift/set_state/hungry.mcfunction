# Changes the state of a gobblerift to hungry

execute if entity @s[tag=myriad.gobblerift.seedling_5] on vehicle run function myriad:block/gobblerift/set_state/add_seedling_to_array
function myriad:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "hungry"
data modify entity @s height set value 2.0f
tag @s add myriad.gobblerift.hungry
tag @s add myriad.gobblerift.can_reproduce