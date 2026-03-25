# Functions to run as the player who fell into the situation

execute if predicate myriad:location_check/in_void run effect give @s minecraft:levitation 4 50
execute if predicate myriad:location_check/in_void run effect give @s minecraft:slow_falling 60 0
execute positioned ^ ^ ^ if predicate myriad:location_check/in_water run effect give @s minecraft:water_breathing 180 0 false
tag @s remove myriad.scheduled.totem_of_undying
