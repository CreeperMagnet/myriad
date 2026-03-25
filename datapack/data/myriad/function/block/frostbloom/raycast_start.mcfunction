# Starts the placement raycast using player's reach

tag @s add myriad.frostbloom_raycaster
scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function myriad:block/frostbloom/raycast
tag @s remove myriad.frostbloom_raycaster