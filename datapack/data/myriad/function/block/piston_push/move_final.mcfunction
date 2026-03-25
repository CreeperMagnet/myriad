# Teleports the entity to the proper position

execute if score #temp_0 myriad.dummy matches 0 run return 0

execute if score #temp_0 myriad.dummy matches 1 at @s run tp ~1 ~ ~
execute if score #temp_0 myriad.dummy matches 2 at @s run tp ~-1 ~ ~
execute if score #temp_0 myriad.dummy matches 3 at @s run tp ~ ~1 ~
execute if score #temp_0 myriad.dummy matches 4 at @s run tp ~ ~-1 ~
execute if score #temp_0 myriad.dummy matches 5 at @s run tp ~ ~ ~1
execute if score #temp_0 myriad.dummy matches 6 at @s run tp ~ ~ ~-1

scoreboard players set @s myriad.dummy 2
