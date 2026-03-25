# Checks a block tag

execute if block ~ ~ ~ minecraft:anvil run function myriad:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:anvil"}
execute if block ~ ~ ~ minecraft:chipped_anvil run function myriad:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:chipped_anvil"}
execute if block ~ ~ ~ minecraft:damaged_anvil run function myriad:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:damaged_anvil"}
