# Sets a gobblerift into digesting state

execute if entity @s[tag=myriad.gobblerift.can_reproduce] run particle minecraft:heart ~ ~1.2 ~ 0.3 0.4 0.3 1 5 normal

function myriad:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "digesting"
tag @s add myriad.gobblerift.digesting
