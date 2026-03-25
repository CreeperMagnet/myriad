# Checks a log block tag

$execute if block ~ ~ ~ minecraft:$(type)_log run function myriad:item/wrench/rotate/macro/axis {block:"minecraft:$(type)_log"}
$execute if block ~ ~ ~ minecraft:$(type)_wood run function myriad:item/wrench/rotate/macro/axis {block:"minecraft:$(type)_wood"}
$execute if block ~ ~ ~ minecraft:stripped_$(type)_log run function myriad:item/wrench/rotate/macro/axis {block:"minecraft:stripped_$(type)_log"}
$execute if block ~ ~ ~ minecraft:stripped_$(type)_wood run function myriad:item/wrench/rotate/macro/axis {block:"minecraft:stripped_$(type)_wood"}
