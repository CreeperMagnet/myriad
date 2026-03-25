# Checks a block tag

execute if block ~ ~ ~ minecraft:activator_rail run function myriad:item/wrench/rotate/macro/rail {block:"minecraft:activator_rail"}
execute if block ~ ~ ~ minecraft:detector_rail run function myriad:item/wrench/rotate/macro/rail {block:"minecraft:detector_rail"}
execute if block ~ ~ ~ minecraft:powered_rail run function myriad:item/wrench/rotate/macro/rail {block:"minecraft:powered_rail"}
execute if block ~ ~ ~ minecraft:rail run function myriad:item/wrench/rotate/macro/rail {block:"minecraft:rail"}
