# Raycast for putting plant into pot

execute positioned ^ ^ ^0.01 if block ~ ~ ~ minecraft:flower_pot align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=smithed.block,tag=!myriad.flower_pot] run return run function myriad:block/potted_plant/place/summon
scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^0.01 if predicate myriad:location_check/raycast_ignore run function myriad:block/potted_plant/place/raycast