# Removes tags when you take off the cursed crown

attribute @s minecraft:max_health modifier remove myriad:cursed_crown
attribute @s minecraft:max_absorption modifier remove myriad:cursed_crown
tag @s remove myriad.wearing_cursed_crown
scoreboard players reset @s myriad.cursed_crown_cooldown