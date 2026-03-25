# Raycasts

execute if block ^ ^ ^0.01 minecraft:dropper[triggered=false]{CustomName:{"translate":"block.myriad.soul_conductor.name","font":"myriad:technical"}} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~1 ~0.5 as @n[distance=..0.0001,type=minecraft:item_display,tag=myriad.soul_conductor] at @s positioned ~ ~-0.5 ~ run return run function myriad:block/soul_conductor/find_path/start/main
scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^0.01 run function myriad:block/soul_conductor/activate/raycast