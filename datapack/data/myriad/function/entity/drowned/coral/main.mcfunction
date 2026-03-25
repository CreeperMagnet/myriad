# Determines the chance of adding coral to drowned depending on the biome

execute unless biome ~ ~ ~ #myriad:spawns_more_coral_drowned if predicate myriad:random_chance/0.05 run function myriad:entity/drowned/coral/set_variant
execute if biome ~ ~ ~ #myriad:spawns_more_coral_drowned run function myriad:entity/drowned/coral/set_variant
