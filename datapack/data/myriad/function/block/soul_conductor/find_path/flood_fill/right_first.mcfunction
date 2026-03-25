# Runs the right path first, then the left path.

execute unless score #soul_conductor_unfinished myriad.dummy matches 0 rotated ~90 0 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:sculk run function myriad:block/soul_conductor/find_path/flood_fill/main
execute unless score #soul_conductor_unfinished myriad.dummy matches 0 rotated ~-90 0 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:sculk run function myriad:block/soul_conductor/find_path/flood_fill/main
scoreboard players set #soul_conductor_lr_random myriad.dummy 0