# Spawns a geomancer

execute store result score @s myriad.dummy if entity @e[tag=myriad.geomancer,type=minecraft:wandering_trader]
execute if entity @e[tag=myriad.geomancer,type=minecraft:wandering_trader,distance=..20] run scoreboard players set @s myriad.dummy 100
execute if entity @a[distance=..20] run scoreboard players set @s myriad.dummy 100
execute if entity @s[scores={myriad.dummy=..10}] run function myriad:commands/summon/geomancer
execute if entity @s[scores={myriad.dummy=..10}] run tp @s ~ ~-1000 ~
scoreboard players reset @s myriad.dummy
