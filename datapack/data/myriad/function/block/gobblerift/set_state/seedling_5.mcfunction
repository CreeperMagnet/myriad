# Sets a gobblerift into seedling state 5

function myriad:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "seedling_5"
data modify entity @s height set value 1.5625f
tag @s add myriad.gobblerift.bonemealable
tag @s add myriad.gobblerift.seedling_5
tag @s add myriad.gobblerift.seedling