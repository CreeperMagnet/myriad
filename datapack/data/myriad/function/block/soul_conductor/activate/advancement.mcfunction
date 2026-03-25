# Commands to run on soul conductor click

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function myriad:block/soul_conductor/activate/raycast
advancement revoke @s only myriad:technical/default_block_use/activate_soul_conductor
