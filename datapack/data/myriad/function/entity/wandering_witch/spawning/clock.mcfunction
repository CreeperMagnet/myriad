# A clock for spawning a wandering witch

scoreboard players remove #wandering_witch_timer myriad.dummy 1
execute if predicate myriad:time_check/wandering_witch_spawn_time unless score #wandering_witch_timer myriad.dummy matches 1.. run function myriad:entity/wandering_witch/spawning/clock_end