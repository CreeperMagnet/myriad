# Verifies the item for gobblerift feeding

data modify storage myriad:temp root.meat set value 1b
execute if data storage myriad:temp root.item.components."minecraft:custom_data".myriad.gobblerift_meat.value run return run data modify storage myriad:temp root.meat_value set from storage myriad:temp root.item.components."minecraft:custom_data".myriad.gobblerift_meat.value
execute if items entity @s weapon.mainhand #myriad:gobblerift_meat/1 run data modify storage myriad:temp root.meat_value set value 1
execute if items entity @s weapon.mainhand #myriad:gobblerift_meat/2 run data modify storage myriad:temp root.meat_value set value 2
execute if items entity @s weapon.mainhand #myriad:gobblerift_meat/3 run data modify storage myriad:temp root.meat_value set value 3
execute if items entity @s weapon.mainhand #myriad:gobblerift_meat/5 run data modify storage myriad:temp root.meat_value set value 5
execute if items entity @s weapon.mainhand #myriad:gobblerift_meat/6 run data modify storage myriad:temp root.meat_value set value 6
execute if items entity @s weapon.mainhand #myriad:gobblerift_meat/8 run data modify storage myriad:temp root.meat_value set value 8
execute if items entity @s weapon.mainhand #myriad:gobblerift_meat/10 run data modify storage myriad:temp root.meat_value set value 10
execute if data storage myriad:temp root.item.components."minecraft:custom_data" run data modify storage myriad:temp root.meat set value 0b
execute if data storage myriad:temp root.item.components."minecraft:custom_data" run data remove storage myriad:temp root.item
