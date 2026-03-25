# Finds the block you are looking at

execute positioned ^ ^ ^0.01 unless predicate myriad:location_check/raycast_ignore positioned ^ ^ ^-0.01 unless block ^ ^ ^0.01 #cauldrons align xyz positioned ~0.5 ~ ~0.5 if predicate myriad:location_check/raycast_ignore unless block ~ ~ ~ minecraft:lava unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:powder_snow run return run function myriad:entity/snail/unbucket/summon
execute positioned ^ ^ ^0.01 unless predicate myriad:location_check/raycast_ignore positioned ^ ^ ^-0.01 if block ^ ^ ^0.01 #cauldrons positioned ^ ^ ^0.01 align xyz unless block ~ ~1 ~ #myriad:opaque positioned ~0.5 ~0.25 ~0.5 run return run function myriad:entity/snail/unbucket/summon
scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^0.01 if predicate myriad:location_check/raycast_ignore run function myriad:entity/snail/unbucket/raycast
