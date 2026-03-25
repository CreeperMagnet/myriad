# Enchants a random mob nearby

scoreboard players reset @s myriad.dummy2
tag @s remove myriad.spellcasting
data modify entity @s equipment.chest.components."minecraft:custom_model_data".flags[2] set value false
data remove entity @s Offers.Recipes
attribute @s minecraft:movement_speed modifier remove myriad:slowness
playsound myriad:entity.enchanter.spell hostile @a[distance=..16]
execute as @e[sort=random,distance=..10,type=#myriad:enchanter_affected,tag=!myriad.enchanter,limit=1,nbt=!{active_effects:[{ambient:1b}]}] at @s run function myriad:entity/enchanter/enchanted
