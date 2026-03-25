# Starts the raycast for planting a potted plant

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function myriad:block/potted_plant/place/raycast
advancement revoke @s only myriad:technical/default_block_use/potted_plant
