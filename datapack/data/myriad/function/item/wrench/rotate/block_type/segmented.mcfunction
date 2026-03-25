# Rotates a block with an all facing blockstate that's triggerable

execute if block ~ ~ ~ minecraft:pink_petals run function myriad:item/wrench/rotate/macro/segmented {block:"minecraft:pink_petals",segment_blockstate:"flower_amount"}

execute if block ~ ~ ~ minecraft:leaf_litter run function myriad:item/wrench/rotate/macro/segmented {block:"minecraft:leaf_litter",segment_blockstate:"segment_amount"}

execute if block ~ ~ ~ minecraft:wildflowers run function myriad:item/wrench/rotate/macro/segmented {block:"minecraft:wildflowers",segment_blockstate:"flower_amount"}