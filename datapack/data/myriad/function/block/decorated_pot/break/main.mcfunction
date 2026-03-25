# Commands to break a decorated pot

scoreboard players set #temp_0 myriad.dummy 0
data remove storage myriad:temp root
data modify storage myriad:temp root.item set from entity @s item.components."minecraft:custom_data".item
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..5,nbt={Item:{components:{"minecraft:pot_decorations":["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]},id:"minecraft:decorated_pot"}},nbt=!{Item:{components:{"minecraft:custom_data":{myriad:{}}}}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] run function myriad:block/decorated_pot/break/as_item
execute unless score #temp_0 myriad.dummy matches 1.. run function myriad:block/decorated_pot/break/summon_sherds/main
function myriad:block/break_particles/spawn_generic
kill @s
