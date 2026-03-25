# Ten-second-clocks a wandering witch

execute store result score @s myriad.dummy run data get entity @s DespawnDelay
execute if entity @s[scores={myriad.dummy=..200}] run function myriad:entity/wandering_witch/despawn_entity