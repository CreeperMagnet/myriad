# Starts a raycast

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function myriad:block/brewing_stand/marker_spawning/raycast
advancement revoke @s only myriad:technical/default_block_use/open_brewing_stand
