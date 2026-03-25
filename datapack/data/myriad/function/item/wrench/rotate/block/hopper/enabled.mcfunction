# Rotates a block

execute if block ~ ~ ~ minecraft:hopper[facing=north] run return run setblock ~ ~ ~ minecraft:hopper[facing=east]
execute if block ~ ~ ~ minecraft:hopper[facing=south] run return run setblock ~ ~ ~ minecraft:hopper[facing=west]
execute if block ~ ~ ~ minecraft:hopper[facing=east] run return run setblock ~ ~ ~ minecraft:hopper[facing=south]
execute if block ~ ~ ~ minecraft:hopper[facing=west] run return run setblock ~ ~ ~ minecraft:hopper[facing=down]
execute if block ~ ~ ~ minecraft:hopper[facing=down] run return run setblock ~ ~ ~ minecraft:hopper[facing=north]