# Moves any block entities with the piston

execute if score @s myriad.dummy matches 1.. run return 0

scoreboard players set #temp_0 myriad.dummy 0

execute if block ~ ~ ~ minecraft:moving_piston[facing=east]{extending:1b} run scoreboard players set #temp_0 myriad.dummy 1
execute if block ~ ~ ~ minecraft:moving_piston[facing=east]{extending:0b} run scoreboard players set #temp_0 myriad.dummy 2

execute if block ~ ~ ~ minecraft:moving_piston[facing=west]{extending:1b} run scoreboard players set #temp_0 myriad.dummy 2
execute if block ~ ~ ~ minecraft:moving_piston[facing=west]{extending:0b} run scoreboard players set #temp_0 myriad.dummy 1

execute if block ~ ~ ~ minecraft:moving_piston[facing=up]{extending:1b} run scoreboard players set #temp_0 myriad.dummy 3
execute if block ~ ~ ~ minecraft:moving_piston[facing=up]{extending:0b} run scoreboard players set #temp_0 myriad.dummy 4

execute if block ~ ~ ~ minecraft:moving_piston[facing=down]{extending:1b} run scoreboard players set #temp_0 myriad.dummy 4
execute if block ~ ~ ~ minecraft:moving_piston[facing=down]{extending:0b} run scoreboard players set #temp_0 myriad.dummy 3

execute if block ~ ~ ~ minecraft:moving_piston[facing=south]{extending:1b} run scoreboard players set #temp_0 myriad.dummy 5
execute if block ~ ~ ~ minecraft:moving_piston[facing=south]{extending:0b} run scoreboard players set #temp_0 myriad.dummy 6

execute if block ~ ~ ~ minecraft:moving_piston[facing=north]{extending:1b} run scoreboard players set #temp_0 myriad.dummy 6
execute if block ~ ~ ~ minecraft:moving_piston[facing=north]{extending:0b} run scoreboard players set #temp_0 myriad.dummy 5

function myriad:block/piston_push/move_final
