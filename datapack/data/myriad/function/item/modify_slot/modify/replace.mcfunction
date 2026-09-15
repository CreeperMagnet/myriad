# Replaces an item with another one

$loot replace entity @s $(container_name)$(container_slot) loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","modifier":{"type":"minecraft:set_components","components":$(components)}}]}]}