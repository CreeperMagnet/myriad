# Rotates the block you're looking at

execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound myriad:item.wrench.rotate_block block @a[distance=..16]
execute if predicate myriad:entity_properties/slots/weapon.mainhand/wrench run swing
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/wrench run swing @s offhand
execute unless entity @s[gamemode=creative] run function myriad:item/wrench/damage

execute if block ~ ~ ~ #myriad:block_entities run data modify storage myriad:temp root.wrench_block_data set from block ~ ~ ~ {}

execute if block ~ ~ ~ #myriad:wrench/block_type/axis run function myriad:item/wrench/rotate/block_type/axis

execute if block ~ ~ ~ #myriad:wrench/block_type/axis_waterloggable run function myriad:item/wrench/rotate/block_type/axis_waterloggable

execute if block ~ ~ ~ #myriad:wrench/block_type/facing_all run function myriad:item/wrench/rotate/block_type/facing_all

execute if block ~ ~ ~ #myriad:wrench/block_type/facing_all_waterloggable run function myriad:item/wrench/rotate/block_type/facing_all_waterloggable

execute if block ~ ~ ~ #myriad:wrench/block_type/facing_all_triggerable run function myriad:item/wrench/rotate/block_type/facing_all_triggerable

execute if block ~ ~ ~ #myriad:wrench/block_type/facing_cardinal run function myriad:item/wrench/rotate/block_type/facing_cardinal

execute if block ~ ~ ~ #myriad:wrench/block_type/facing_cardinal_waterloggable run function myriad:item/wrench/rotate/block_type/facing_cardinal_waterloggable

execute if block ~ ~ ~ #myriad:wrench/block_type/rotation run function myriad:item/wrench/rotate/block_type/rotation

execute if block ~ ~ ~ #myriad:wrench/block_type/rotation_waterloggable run function myriad:item/wrench/rotate/block_type/rotation_waterloggable

execute if block ~ ~ ~ #myriad:wrench/block_type/segmented run function myriad:item/wrench/rotate/block_type/segmented

execute if block ~ ~ ~ #minecraft:rails run function myriad:item/wrench/rotate/block_tag/rails

execute if block ~ ~ ~ #minecraft:stairs run function myriad:item/wrench/rotate/block_tag/stairs

execute if block ~ ~ ~ #minecraft:all_hanging_signs run function myriad:item/wrench/rotate/block_tag/all_hanging_signs/main

execute if block ~ ~ ~ minecraft:hopper run function myriad:item/wrench/rotate/block/hopper/main

execute if block ~ ~ ~ minecraft:crafter run function myriad:item/wrench/rotate/block/crafter/main

execute if block ~ ~ ~ #myriad:wrench/creative_only run function myriad:item/wrench/rotate/creative_only

# Exceptions that *should* be up there, but have to match specific criteria to be able to rotate
execute if block ~ ~ ~ minecraft:piston[extended=false] run function myriad:item/wrench/rotate/macro/facing_all {block:"minecraft:piston"}

execute if block ~ ~ ~ minecraft:sticky_piston[extended=false] run function myriad:item/wrench/rotate/macro/facing_all {block:"minecraft:sticky_piston"}

execute if block ~ ~ ~ #minecraft:fence_gates[powered=false] run function myriad:item/wrench/rotate/block_tag/fence_gates/main

execute if block ~ ~ ~ minecraft:chest[type=single] run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:chest"}

execute if block ~ ~ ~ minecraft:trapped_chest[type=single] run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:trapped_chest"}

execute if block ~ ~ ~ #minecraft:copper_chests[type=single] run function myriad:item/wrench/rotate/block_tag/copper_chests

execute if block ~ ~ ~ minecraft:repeater[locked=false] run function myriad:item/wrench/rotate/block/repeater

execute if block ~ ~ ~ minecraft:bell[attachment=floor] run function myriad:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:bell"}

execute if block ~ ~ ~ minecraft:iron_trapdoor[powered=false] run function myriad:item/wrench/rotate/block/iron_trapdoor/main

execute if block ~ ~ ~ minecraft:iron_door[powered=false] run function myriad:item/wrench/rotate/block/iron_door/main

# Restore any block data that was taken away
execute if block ~ ~ ~ #myriad:block_entities run data modify block ~ ~ ~ {} merge from storage myriad:temp root.wrench_block_data

