# Rotates a block with a cardinal facing blockstate that's waterloggable

execute if block ~ ~ ~ minecraft:ender_chest run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:ender_chest"}
execute if block ~ ~ ~ minecraft:decorated_pot run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:decorated_pot"}
execute if block ~ ~ ~ #minecraft:copper_golem_statues run function myriad:item/wrench/rotate/block_tag/copper_golem_statues
execute if block ~ ~ ~ #minecraft:wooden_shelves run function myriad:item/wrench/rotate/block_tag/wooden_shelves
