# Ticking for custom potted plant entities

execute unless block ~ ~ ~ minecraft:flower_pot run function myriad:block/potted_plant/break/as_item_display
execute on passengers if data entity @s attack run function myriad:block/potted_plant/break/as_interaction
