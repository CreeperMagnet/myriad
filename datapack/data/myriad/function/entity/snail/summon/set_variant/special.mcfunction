# Sets a snail variant's tags

tag @s[predicate=myriad:random_chance/0.5] add myriad.tag
execute if entity @s[tag=myriad.tag] run function myriad:entity/snail/summon/set_variant/spiral
execute unless entity @s[tag=myriad.tag] run function myriad:entity/snail/summon/set_variant/yellow