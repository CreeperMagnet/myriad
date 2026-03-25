# Finds the sprouter you're looking at

execute positioned ~-0.01 ~-0.99 ~-0.01 as @n[dx=0,type=minecraft:wandering_trader,tag=myriad.sprouter] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] at @s run return run function myriad:entity/sprouter/interact/as_entity
scoreboard players remove @s myriad.dummy 1
execute if entity @s[scores={myriad.dummy=1..},tag=!myriad.tag] positioned ^ ^ ^0.01 run function myriad:entity/sprouter/interact/raycast