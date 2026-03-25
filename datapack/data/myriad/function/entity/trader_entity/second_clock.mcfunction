# Second-clocks a living entity with a wandering trader base

team join smithed.prevent_aggression

execute if entity @s[predicate=myriad:random_chance/0.1,tag=!myriad.silent] run function myriad:entity/trader_entity/sounds/ambient

data remove entity @s[tag=!myriad.wandering_witch] Offers.Recipes

execute if entity @s[tag=myriad.illager] run return run function myriad:entity/illager/second_clock
execute if entity @s[tag=myriad.snail] run return run function myriad:entity/snail/second_clock
execute if entity @s[tag=myriad.sprouter] run function myriad:entity/sprouter/second_clock