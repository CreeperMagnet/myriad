# Special interactions with blocks

execute if block ~ ~ ~ minecraft:water run particle minecraft:splash ~ ~ ~ 0.5 0.1 0.5 0.4 1 normal
execute if block ~ ~ ~ minecraft:bubble_column run particle minecraft:splash ~ ~ ~ 0.5 0.1 0.5 0.4 1 normal

execute if block ~ ~ ~ minecraft:lava run particle minecraft:lava ~ ~.1 ~ 0.3 0.4 0.3 0.2 1 normal

execute if block ~ ~ ~ minecraft:cake run particle minecraft:block{block_state:"minecraft:cake"} ~ ~-.5 ~ 0.4 0.2 0.4 0.8 1 normal
