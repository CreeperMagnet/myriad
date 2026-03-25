# Starts a wrench raycast by getting attributes and such

tag @s add myriad.wrench_raycaster
scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function myriad:item/wrench/raycast
tag @s remove myriad.wrench_raycaster