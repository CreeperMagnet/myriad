# Commands to break a frostbloom

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:spruce_sapling"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] at @s run function myriad:block/frostbloom/break/kill_item
function myriad:block/break_particles/spawn_generic
kill @s
execute if block ~ ~1 ~ minecraft:light[level=0] run setblock ~ ~1 ~ minecraft:air
execute if block ~ ~-1 ~ #myriad:opaque if block ~ ~ ~ #myriad:air run setblock ~ ~ ~ minecraft:snow
