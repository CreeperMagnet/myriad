# Sets a gobblerift into seedling state 3

function myriad:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "seedling_3"
data modify entity @s height set value 0.9375f
tag @s add myriad.gobblerift.bonemealable
tag @s add myriad.gobblerift.seedling_3
tag @s add myriad.gobblerift.seedling