# Checks creative-only blocks

execute if block ~ ~ ~ minecraft:jigsaw run function myriad:item/wrench/rotate/block/jigsaw
execute if block ~ ~ ~ minecraft:command_block run function myriad:item/wrench/rotate/macro/command_block {block:"minecraft:command_block"}
execute if block ~ ~ ~ minecraft:chain_command_block run function myriad:item/wrench/rotate/macro/command_block {block:"minecraft:chain_command_block"}
execute if block ~ ~ ~ minecraft:repeating_command_block run function myriad:item/wrench/rotate/macro/command_block {block:"minecraft:repeating_command_block"}
execute if block ~ ~ ~ minecraft:end_portal_frame run function myriad:item/wrench/rotate/block/end_portal_frame

