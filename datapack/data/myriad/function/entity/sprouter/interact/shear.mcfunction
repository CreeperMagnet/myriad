# Commands to run for shearing a sprouter

scoreboard players reset @s myriad.dummy2
data modify entity @s equipment.chest.components."minecraft:custom_model_data".floats[0] set value 0.0f
data remove entity @s Offers.Recipes
loot spawn ~ ~ ~ loot myriad:shearing/sprouter
tag @s remove myriad.sprouter.stage_3
tag @s add myriad.sprouter.stage_0
playsound myriad:entity.sprouter.shear neutral @a[distance=..16]