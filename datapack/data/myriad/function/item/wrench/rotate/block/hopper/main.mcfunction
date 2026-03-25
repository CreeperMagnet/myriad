# Rotates a block

execute if block ~ ~ ~ minecraft:hopper[enabled=true] run function myriad:item/wrench/rotate/block/hopper/enabled
execute if block ~ ~ ~ minecraft:hopper[enabled=false] run function myriad:item/wrench/rotate/block/hopper/not_enabled