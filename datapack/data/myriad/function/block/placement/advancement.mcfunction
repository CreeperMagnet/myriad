# Scans for placed custom blocks

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 1
scoreboard players add @s myriad.dummy 2
execute anchored eyes run function myriad:block/placement/raycast
execute as @e[type=minecraft:item_display,tag=myriad.newly_placed_update_light] at @s run function myriad:block/update_light/on_place
advancement revoke @s only myriad:technical/placed_block/custom_block