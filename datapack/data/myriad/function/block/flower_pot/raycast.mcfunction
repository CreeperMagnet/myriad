# Finds the block you are looking at

execute positioned ~-0.01 ~-0.99 ~-0.01 as @n[dx=0,type=!#myriad:intangible,tag=!myriad.flower_pot_raycaster] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run return 0

execute positioned ^ ^ ^0.01 unless predicate myriad:location_check/raycast_ignore if predicate myriad:location_check/replaceable rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate myriad:location_check/replaceable unless entity @e[distance=..0.5,tag=smithed.block] run return run function myriad:block/flower_pot/place
execute positioned ^ ^ ^0.01 unless predicate myriad:location_check/raycast_ignore positioned ^ ^ ^-0.1 rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate myriad:location_check/replaceable unless entity @e[distance=..0.5,tag=smithed.block] run return run function myriad:block/flower_pot/place
scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^0.01 if predicate myriad:location_check/raycast_ignore positioned ^ ^ ^0.01 run function myriad:block/flower_pot/raycast