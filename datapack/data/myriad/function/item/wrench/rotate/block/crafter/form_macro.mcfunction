# Rotates a block

$execute if block ~ ~ ~ minecraft:crafter[orientation=north_up] run return run setblock ~ ~ ~ minecraft:crafter[orientation=east_up,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=east_up] run return run setblock ~ ~ ~ minecraft:crafter[orientation=south_up,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=south_up] run return run setblock ~ ~ ~ minecraft:crafter[orientation=west_up,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=west_up] run return run setblock ~ ~ ~ minecraft:crafter[orientation=up_north,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=up_north] run return run setblock ~ ~ ~ minecraft:crafter[orientation=up_east,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=up_east] run return run setblock ~ ~ ~ minecraft:crafter[orientation=up_south,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=up_south] run return run setblock ~ ~ ~ minecraft:crafter[orientation=up_west,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=up_west] run return run setblock ~ ~ ~ minecraft:crafter[orientation=down_north,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=down_north] run return run setblock ~ ~ ~ minecraft:crafter[orientation=down_east,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=down_east] run return run setblock ~ ~ ~ minecraft:crafter[orientation=down_south,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=down_south] run return run setblock ~ ~ ~ minecraft:crafter[orientation=down_west,triggered=$(triggered),crafting=$(crafting)]
$execute if block ~ ~ ~ minecraft:crafter[orientation=down_west] run return run setblock ~ ~ ~ minecraft:crafter[orientation=north_up,triggered=$(triggered),crafting=$(crafting)]