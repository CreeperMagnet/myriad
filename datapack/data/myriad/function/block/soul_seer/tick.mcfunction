# Commands to break a soul seer

execute unless block ~ ~ ~ minecraft:dropper run function myriad:block/soul_seer/break/main

execute if block ~ ~ ~ minecraft:dropper[triggered=false] run tag @s remove myriad.soul_seer.powered
execute if block ~ ~ ~ minecraft:dropper[triggered=true] unless entity @s[tag=myriad.soul_seer.powered] run function myriad:block/soul_seer/powered

scoreboard players remove @s[scores={myriad.dummy2=1..}] myriad.dummy2 1
scoreboard players remove @s[scores={myriad.soul_seer_cooldown=1..}] myriad.soul_seer_cooldown 1
execute if entity @s[scores={myriad.dummy2=0}] run function myriad:block/soul_seer/unglow
execute if entity @s[scores={myriad.soul_seer_cooldown=0}] run function myriad:block/soul_seer/glow/set_comparator