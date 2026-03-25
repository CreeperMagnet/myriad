# Checks if the surrounding area can yield treasure

scoreboard players reset #temp_0 myriad.dummy
scoreboard players reset #temp_1 myriad.dummy
scoreboard players reset #temp_2 myriad.dummy
execute store result score #temp_0 myriad.dummy run clone ~2 ~2 ~2 ~-2 ~-1 ~-2 ~-2 ~-1 ~-2 filtered minecraft:water[level=0] force
execute store result score #temp_1 myriad.dummy run clone ~2 ~2 ~2 ~-2 ~-1 ~-2 ~-2 ~-1 ~-2 filtered #myriad:fishing_bobber_treasure/not_waterloggable force
execute store result score #temp_2 myriad.dummy run clone ~2 ~2 ~2 ~-2 ~-1 ~-2 ~-2 ~-1 ~-2 filtered #myriad:fishing_bobber_treasure/waterloggable[waterlogged=true] force
scoreboard players operation #temp_0 myriad.dummy += #temp_1 myriad.dummy
scoreboard players operation #temp_0 myriad.dummy += #temp_2 myriad.dummy
execute unless score #temp_0 myriad.dummy matches 100 run particle minecraft:bubble_pop ~ ~0.1 ~ 0.2 0.02 0.2 0 5 force