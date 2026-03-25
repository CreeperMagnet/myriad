# Sets tags for a newly spawned baby snail

data modify entity @s attributes[{id:"minecraft:scale"}].base set value 0.25
data remove entity @s Offers.Recipes
data modify entity @s equipment.chest.components."minecraft:item_model" set value "myriad:entity/snail/baby"
data modify entity @s equipment.mainhand.components."minecraft:item_model" set value "myriad:entity/snail/baby"
scoreboard players set @s myriad.dummy2 1200
tag @s add myriad.baby