# Rotates a block

execute if block ~ ~ ~ minecraft:grindstone[face=floor] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:grindstone",blockstate:"face=floor"}
execute if block ~ ~ ~ minecraft:grindstone[face=wall] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:grindstone",blockstate:"face=wall"}
execute if block ~ ~ ~ minecraft:grindstone[face=ceiling] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:grindstone",blockstate:"face=ceiling"}
