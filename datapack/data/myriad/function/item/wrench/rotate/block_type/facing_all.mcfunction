# Rotates a block with an all facing blockstate

execute if block ~ ~ ~ #minecraft:shulker_boxes run function myriad:item/wrench/rotate/block_tag/shulker_boxes

execute if block ~ ~ ~ minecraft:observer run function myriad:item/wrench/rotate/macro/facing_all {block:"minecraft:observer"}

execute if block ~ ~ ~ minecraft:end_rod run function myriad:item/wrench/rotate/macro/facing_all {block:"minecraft:end_rod"}

execute if block ~ ~ ~ minecraft:barrel run function myriad:item/wrench/rotate/macro/facing_all {block:"minecraft:barrel"}