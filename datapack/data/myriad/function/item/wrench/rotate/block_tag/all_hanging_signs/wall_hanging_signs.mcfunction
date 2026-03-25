# Rotates a wall hanging sign and any unattached signs beneath it


execute if block ~ ~ ~ minecraft:acacia_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:acacia_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:bamboo_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:bamboo_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:birch_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:birch_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:cherry_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:cherry_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:crimson_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:crimson_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:dark_oak_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:dark_oak_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:jungle_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:jungle_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:mangrove_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:mangrove_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:oak_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:oak_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:pale_oak_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:pale_oak_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:spruce_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:spruce_wall_hanging_sign"}
execute if block ~ ~ ~ minecraft:warped_wall_hanging_sign run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:warped_wall_hanging_sign"}

execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false] run function myriad:item/wrench/rotate/block_tag/all_hanging_signs/ceiling_hanging_signs_unattached