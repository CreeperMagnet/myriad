# Makes animations and such for a spell-casting cycle

scoreboard players reset @s myriad.dummy2
tag @s remove myriad.spellcasting
data modify entity @s equipment.chest.components."minecraft:custom_model_data".flags[2] set value false
data remove entity @s Offers.Recipes
attribute @s minecraft:movement_speed modifier remove myriad:slowness
execute if entity @s[tag=myriad.has_line_of_sight] run function myriad:entity/iceologer/spell_successful
