# Sets odds for hoglins

# 1/256 chance to spawn 8 pigs (target + 7)
execute if predicate myriad:random_chance/0.00390625 run return run function myriad:entity/hoglin/spawn_7_hogs

summon minecraft:hoglin ~ ~ ~ {Age:-23999}
execute if predicate myriad:random_chance/0.5 run summon minecraft:hoglin ~ ~ ~ {Age:-23999}