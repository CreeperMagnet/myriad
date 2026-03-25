# Replaces a slot on self with a specific id of item with a specific tag

$loot replace entity @s $(slot) loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_components","components":$(components)},{"function":"minecraft:set_count","count":$(count)}]}]}]}