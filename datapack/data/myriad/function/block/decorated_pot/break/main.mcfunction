# Commands to break a decorated pot

data remove storage myriad:temp root
data modify storage myriad:temp root.item set from entity @s item.components."minecraft:custom_data".item
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..5,nbt={Item:{id:"minecraft:decorated_pot"}},nbt=!{Item:{components:{"minecraft:custom_data":{myriad:{}}}}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] run function myriad:block/decorated_pot/break/as_item
function myriad:block/break_particles/spawn_generic
kill @s
