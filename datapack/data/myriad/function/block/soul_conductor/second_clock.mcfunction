# Second clock, switches texture from disabled <-> enabled

execute unless entity @s[tag=myriad.soul_conductor.powered] if block ~ ~ ~ minecraft:dropper[triggered=true] run function myriad:block/soul_conductor/power/disable
execute if entity @s[tag=myriad.soul_conductor.powered] if block ~ ~ ~ minecraft:dropper[triggered=false] run function myriad:block/soul_conductor/power/enable