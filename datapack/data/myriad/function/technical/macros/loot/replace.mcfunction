# Replaces a slot on self with a specific id of item with a specific tag

$loot replace entity @s $(slot) loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","modifier":[{"type":"minecraft:set_components","components":$(components)},{"type":"minecraft:set_count","count":$(count)}]}]}]}