# Rotates a block with an all facing blockstate that's triggerable

execute if block ~ ~ ~ minecraft:dispenser run function myriad:item/wrench/rotate/macro/facing_all_triggerable {block:"minecraft:dispenser"}

execute if block ~ ~ ~ minecraft:dropper run function myriad:item/wrench/rotate/macro/facing_all_triggerable {block:"minecraft:dropper"}