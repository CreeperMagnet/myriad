# Makes animations and such for a spell-casting cycle

scoreboard players add @s myriad.dummy2 0
execute if entity @s[scores={myriad.dummy2=0..}] run function myriad:entity/illager/line_of_sight
scoreboard players add @s[scores={myriad.dummy2=0..}] myriad.dummy2 1
data modify entity @s equipment.chest.components."minecraft:custom_model_data".flags[2] set value true
data remove entity @s Offers.Recipes
execute rotated ~ 0 run particle minecraft:entity_effect{color:-9482325} ^-0.35 ^1.15 ^0.7 0 0 0 0 5 normal
attribute @s minecraft:movement_speed modifier add myriad:slowness -100 add_value
execute if entity @s[tag=!myriad.has_line_of_sight] run function myriad:entity/geomancer/spell_end
rotate @s[tag=myriad.has_line_of_sight] facing entity @n[predicate=myriad:entity_properties/targeted_by_illagers,distance=..16] eyes
execute if entity @s[scores={myriad.dummy2=3..}] run function myriad:entity/geomancer/spell_end