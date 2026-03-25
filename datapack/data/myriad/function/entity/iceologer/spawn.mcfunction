# Spawns an iceologer to replace a pillager

execute store result score @s myriad.dummy if entity @e[tag=myriad.iceologer,distance=..50,type=minecraft:wandering_trader]
execute if score @s myriad.dummy < #5 myriad.dummy run function myriad:commands/summon/iceologer
execute if score @s myriad.dummy < #5 myriad.dummy run tp @s ~ ~-1000 ~