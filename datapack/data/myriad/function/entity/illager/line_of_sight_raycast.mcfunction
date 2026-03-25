# Finds the player an illager is looking at

execute if entity @e[predicate=myriad:entity_properties/targeted_by_illagers,distance=..2.3] run return run tag @s add myriad.has_line_of_sight
execute if entity @s[distance=..16,tag=!myriad.has_line_of_sight] if block ^ ^ ^0.05 #myriad:seethrough positioned ^ ^ ^0.05 run function myriad:entity/illager/line_of_sight_raycast