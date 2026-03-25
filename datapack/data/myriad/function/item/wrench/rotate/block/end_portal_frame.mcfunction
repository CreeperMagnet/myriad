# Rotates a block

execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:end_portal_frame",blockstate:"eye=true"}
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=false] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:end_portal_frame",blockstate:"eye=false"}
