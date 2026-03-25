# Checks what orientation of conductor you have

execute if block ~ ~ ~ minecraft:dropper[facing=north] rotated 0 0 run function myriad:block/soul_conductor/find_path/start/check_sculk
execute if block ~ ~ ~ minecraft:dropper[facing=east] rotated 90 0 run function myriad:block/soul_conductor/find_path/start/check_sculk
execute if block ~ ~ ~ minecraft:dropper[facing=south] rotated 180 0 run function myriad:block/soul_conductor/find_path/start/check_sculk
execute if block ~ ~ ~ minecraft:dropper[facing=west] rotated 270 0 run function myriad:block/soul_conductor/find_path/start/check_sculk
execute if block ~ ~ ~ minecraft:dropper[facing=down] rotated 0 -90 run function myriad:block/soul_conductor/find_path/start/randomize_rotation
execute if block ~ ~ ~ minecraft:dropper[facing=up] rotated 0 90 run function myriad:block/soul_conductor/find_path/start/randomize_rotation