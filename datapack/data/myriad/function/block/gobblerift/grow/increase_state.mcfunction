# Grow a gobblerift

scoreboard players set @s myriad.dummy2 0
execute if entity @s[tag=myriad.gobblerift.seedling_5] run function myriad:block/gobblerift/set_state/hungry
execute if entity @s[tag=myriad.gobblerift.seedling_4] run function myriad:block/gobblerift/set_state/seedling_5
execute if entity @s[tag=myriad.gobblerift.seedling_3] run function myriad:block/gobblerift/set_state/seedling_4
execute if entity @s[tag=myriad.gobblerift.seedling_2] run function myriad:block/gobblerift/set_state/seedling_3
execute if entity @s[tag=myriad.gobblerift.seedling_1] run function myriad:block/gobblerift/set_state/seedling_2