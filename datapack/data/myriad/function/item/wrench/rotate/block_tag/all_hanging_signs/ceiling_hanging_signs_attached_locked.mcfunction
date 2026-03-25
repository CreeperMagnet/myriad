# Rotates an attached hanging sign

execute if block ~ ~ ~ minecraft:acacia_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:acacia_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:bamboo_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:bamboo_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:birch_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:birch_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:cherry_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:cherry_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:crimson_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:crimson_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:dark_oak_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:dark_oak_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:jungle_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:jungle_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:mangrove_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:mangrove_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:oak_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:oak_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:pale_oak_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:pale_oak_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:spruce_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:spruce_hanging_sign",attached:"true"}
execute if block ~ ~ ~ minecraft:warped_hanging_sign run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:warped_hanging_sign",attached:"true"}

execute positioned ~ ~-1 ~ run function myriad:item/wrench/rotate/block_tag/all_hanging_signs/ceiling_hanging_signs_unattached