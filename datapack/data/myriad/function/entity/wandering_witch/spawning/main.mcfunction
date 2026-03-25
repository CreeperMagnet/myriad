# Spawning code for the wandering witch

scoreboard players set #wandering_witch_attempts myriad.dummy 0
execute store result score #temp_0 myriad.dummy run gamerule minecraft:spawn_wandering_traders
data modify storage myriad:temp root.pos set from entity @s Pos
execute if score #temp_0 myriad.dummy matches 1 summon minecraft:marker run function myriad:entity/wandering_witch/spawning/spawn_witch