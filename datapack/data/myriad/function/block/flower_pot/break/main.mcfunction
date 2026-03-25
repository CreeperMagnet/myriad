# Commands to break a flower pot

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.type set from entity @s item.components."minecraft:custom_data".type
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:flower_pot"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] at @s run function myriad:block/flower_pot/break/kill_item with storage myriad:temp root.macro_input

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.item set from entity @s item
data merge storage myriad:temp {root:{macro_input:{dx:0.2,dy:0.2,dz:0.2,speed:0.07,count:40}}}
execute positioned ~ ~-0.25 ~ run function myriad:block/break_particles/macro with storage myriad:temp root.macro_input
kill @s