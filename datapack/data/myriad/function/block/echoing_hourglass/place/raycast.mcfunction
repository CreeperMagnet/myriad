# Finds the block you are looking at

execute positioned ^ ^ ^0.01 unless predicate myriad:location_check/raycast_ignore if predicate myriad:location_check/replaceable rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate myriad:location_check/replaceable unless entity @e[distance=..0.5,tag=smithed.block] run return run function myriad:block/echoing_hourglass/place/summon
execute positioned ^ ^ ^0.01 unless predicate myriad:location_check/raycast_ignore positioned ^ ^ ^-0.1 rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate myriad:location_check/replaceable unless entity @e[distance=..0.5,tag=smithed.block] run return run function myriad:block/echoing_hourglass/place/summon

scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^0.01 if predicate myriad:location_check/raycast_ignore run function myriad:block/echoing_hourglass/place/raycast