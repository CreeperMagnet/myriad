# Makes the baby grow up

tag @s remove myriad.baby
scoreboard players reset @s myriad.dummy2
attribute @s minecraft:scale base set 2.0
attribute @s minecraft:max_health base set 40.0
data modify entity @s Health set value 40.0f
data modify entity @s equipment.head.components."minecraft:item_model" set value "myriad:entity/sprouter/adult/head"
data modify entity @s equipment.chest.components."minecraft:item_model" set value "myriad:entity/sprouter/adult/body"
data remove entity @s Offers.Recipes