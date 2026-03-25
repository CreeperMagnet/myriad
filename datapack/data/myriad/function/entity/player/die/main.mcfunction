# Functions to run when a player dies

execute store result score #temp myriad.dummy run gamerule minecraft:keep_inventory
execute if score #temp myriad.dummy matches 1 run return run advancement revoke @s only myriad:technical/entity_hurt_player/player_dies

execute as @e[type=minecraft:item,distance=..10,nbt={Age:0s}] run function myriad:entity/player/die/tag_item
advancement revoke @s only myriad:technical/entity_hurt_player/player_dies