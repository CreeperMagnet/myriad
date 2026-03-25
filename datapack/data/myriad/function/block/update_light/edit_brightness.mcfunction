# Functions to set brightness nbt based on surrounding light

data merge entity @s {brightness:{sky:0,block:0}}
execute positioned ~1 ~ ~ positioned over motion_blocking_no_leaves positioned ~-1 ~ ~ if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s brightness.sky set value 15
execute positioned ~ ~ ~1 positioned over motion_blocking_no_leaves positioned ~ ~ ~-1 if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s brightness.sky set value 15
execute positioned ~-1 ~ ~ positioned over motion_blocking_no_leaves positioned ~1 ~ ~ if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s brightness.sky set value 15
execute positioned ~ ~ ~-1 positioned over motion_blocking_no_leaves positioned ~ ~ ~1 if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s brightness.sky set value 15
execute positioned ~1 ~ ~ run function myriad:block/update_light/check_light
execute positioned ~ ~ ~1 run function myriad:block/update_light/check_light
execute positioned ~-1 ~ ~ run function myriad:block/update_light/check_light
execute positioned ~ ~ ~-1 run function myriad:block/update_light/check_light
execute positioned ~ ~-1 ~ run function myriad:block/update_light/check_light
execute if score #temp_0 myriad.dummy matches 1.. run scoreboard players remove #temp_0 myriad.dummy 1
execute store result entity @s brightness.block int 1 run scoreboard players get #temp_0 myriad.dummy