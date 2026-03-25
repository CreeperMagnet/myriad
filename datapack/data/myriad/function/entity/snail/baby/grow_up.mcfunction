# Makes the baby grow up

tag @s remove myriad.baby
data modify entity @s attributes[{id:"minecraft:scale"}].base set value 0.5
data modify entity @s equipment.chest.components."minecraft:item_model" set value "myriad:entity/snail/adult"
data modify entity @s equipment.mainhand.components."minecraft:item_model" set value "myriad:entity/snail/adult"
scoreboard players reset @s myriad.dummy2