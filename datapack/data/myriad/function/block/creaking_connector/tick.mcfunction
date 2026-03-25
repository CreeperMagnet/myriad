# Tickly commands for connectors

execute unless block ~ ~ ~ minecraft:furnace run function myriad:block/creaking_connector/break
scoreboard players remove @s[scores={myriad.dummy2=1..}] myriad.dummy2 1
execute if score @s myriad.dummy2 matches 0 run function myriad:block/creaking_connector/power/unpower