# Spawns an item from the given input

$execute store result score @s myriad.dummy run loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_components","components":$(components)},{"function":"minecraft:set_count","count":$(count)}]}]}]}
$execute if score @s myriad.dummy matches 0 run loot spawn ~ ~ ~ loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_components","components":$(components)},{"function":"minecraft:set_count","count":$(count)}]}]}]}