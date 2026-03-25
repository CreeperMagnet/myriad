# Randomizes the rotation of the conductor if it's down/up

execute store result score #temp_0 myriad.dummy run random value 1..4
execute if score #temp_0 myriad.dummy matches 1 rotated 0 ~ run function myriad:block/soul_conductor/find_path/start/check_sculk
execute if score #temp_0 myriad.dummy matches 2 rotated 90 ~ run function myriad:block/soul_conductor/find_path/start/check_sculk
execute if score #temp_0 myriad.dummy matches 3 rotated 180 ~ run function myriad:block/soul_conductor/find_path/start/check_sculk
execute if score #temp_0 myriad.dummy matches 4 rotated 270 ~ run function myriad:block/soul_conductor/find_path/start/check_sculk