# Ticking for snail nest block entities

execute store result score #temp_1 myriad.dummy run function myriad:block/piston_push/check

execute if score #temp_1 myriad.dummy matches 1 unless score @s myriad.dummy matches 1.. at @s unless block ~ ~-1 ~ minecraft:clay run function myriad:block/snail_nest/break
execute if score #temp_1 myriad.dummy matches 0 run function myriad:block/snail_nest/break
