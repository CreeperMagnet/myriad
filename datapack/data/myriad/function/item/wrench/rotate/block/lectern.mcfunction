# Rotates a block

execute if block ~ ~ ~ minecraft:lectern[has_book=true] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:lectern",blockstate:"has_book=true"}
execute if block ~ ~ ~ minecraft:lectern[has_book=false] run function myriad:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:lectern"}
