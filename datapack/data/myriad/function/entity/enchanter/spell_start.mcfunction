# Makes animations and such for a spell-casting cycle

scoreboard players set @s myriad.dummy2 0
tag @s add myriad.spellcasting
data modify entity @s equipment.chest.components."minecraft:custom_model_data".flags[2] set value true
attribute @s minecraft:movement_speed modifier add myriad:slowness -100 add_value
