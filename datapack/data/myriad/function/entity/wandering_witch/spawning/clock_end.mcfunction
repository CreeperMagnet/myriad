# Resets the clock and tries to spawn a witch

execute unless score #wandering_witch_attempts myriad.dummy matches 1.. if predicate myriad:random_chance/0.25 as @r[predicate=myriad:location_check/in_overworld] at @s run function myriad:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts myriad.dummy matches 1 if predicate myriad:random_chance/0.5 as @r[predicate=myriad:location_check/in_overworld] at @s run function myriad:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts myriad.dummy matches 2.. unless predicate myriad:random_chance/0.25 as @r[predicate=myriad:location_check/in_overworld] at @s run function myriad:entity/wandering_witch/spawning/main
execute if score #wandering_witch_attempts myriad.dummy matches 10.. as @r[predicate=myriad:location_check/in_overworld] at @s run function myriad:entity/wandering_witch/spawning/main
scoreboard players set #wandering_witch_timer myriad.dummy 420
scoreboard players add #wandering_witch_attempts myriad.dummy 1