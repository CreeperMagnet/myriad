# Freezes a random block in a 5x5 area with an iceier version

execute if block ~ ~ ~ minecraft:fire run setblock ~ ~ ~ minecraft:air replace
execute if block ~ ~ ~ minecraft:lava run setblock ~ ~ ~ minecraft:magma_block replace
execute if block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:blue_ice replace
execute if block ~ ~ ~ minecraft:ice run setblock ~ ~ ~ minecraft:packed_ice replace
execute if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:ice replace
execute if block ~ ~ ~ minecraft:snow[layers=7] run setblock ~ ~ ~ minecraft:snow[layers=8] replace
execute if block ~ ~ ~ minecraft:snow[layers=6] run setblock ~ ~ ~ minecraft:snow[layers=7] replace
execute if block ~ ~ ~ minecraft:snow[layers=5] run setblock ~ ~ ~ minecraft:snow[layers=6] replace
execute if block ~ ~ ~ minecraft:snow[layers=4] run setblock ~ ~ ~ minecraft:snow[layers=5] replace
execute if block ~ ~ ~ minecraft:snow[layers=3] run setblock ~ ~ ~ minecraft:snow[layers=4] replace
execute if block ~ ~ ~ minecraft:snow[layers=2] run setblock ~ ~ ~ minecraft:snow[layers=3] replace
execute if block ~ ~ ~ minecraft:snow[layers=1] run setblock ~ ~ ~ minecraft:snow[layers=2] replace
execute if block ~ ~ ~ #myriad:air if block ~ ~-1 ~ #myriad:opaque run setblock ~ ~ ~ minecraft:snow[layers=1] replace
execute if block ~ ~ ~ #myriad:air if block ~ ~-1 ~ minecraft:snow[layers=8] run setblock ~ ~ ~ minecraft:snow[layers=1] replace
execute if block ~ ~ ~ minecraft:powder_snow_cauldron[level=2] run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=3] replace
execute if block ~ ~ ~ minecraft:powder_snow_cauldron[level=1] run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=2] replace
execute if block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=1] replace