# Raycasts down until hits a non-air block

execute if block ~ ~-1 ~ #myriad:frostbloom/affected positioned ~ ~-1 ~ run function myriad:block/frostbloom/freeze/set_block
execute if block ~ ~-1 ~ #myriad:opaque run function myriad:block/frostbloom/freeze/set_block
execute if block ~ ~-1 ~ minecraft:snow[layers=8] run function myriad:block/frostbloom/freeze/set_block
execute if block ~ ~-1 ~ #myriad:frostbloom/ignore positioned ~ ~-1 ~ run function myriad:block/frostbloom/freeze/raycast_down