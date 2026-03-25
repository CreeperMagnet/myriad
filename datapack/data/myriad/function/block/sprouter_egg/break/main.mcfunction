# Commands to break an egg

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:sniffer_egg"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] at @s run function myriad:block/sprouter_egg/break/kill_item
function myriad:block/break_particles/spawn_generic
kill @s