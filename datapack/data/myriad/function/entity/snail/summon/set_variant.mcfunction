# Sets the variant for the snail

tag @s remove myriad.tag
tag @s[predicate=!myriad:random_chance/0.33] add myriad.tag
execute if entity @s[tag=myriad.tag] if predicate myriad:random_chance/0.5 run function myriad:entity/snail/summon/set_variant/black
execute if entity @s[tag=!myriad.tag] run function myriad:entity/snail/summon/set_variant/special
execute if predicate myriad:random_chance/0.05 run function myriad:entity/snail/summon/set_variant/light_blue
execute if biome ~ ~ ~ #myriad:spawns_skull_snails run function myriad:entity/snail/summon/set_variant/skull
tag @s remove myriad.tag
