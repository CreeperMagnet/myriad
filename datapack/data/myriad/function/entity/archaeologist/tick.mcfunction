# Ticking for archaeologist

item replace entity @s weapon.mainhand with minecraft:stone[minecraft:item_model="myriad:entity/archaeologist/body",minecraft:custom_model_data={flags:[false]}]

data modify storage myriad:temp root.villager_data set from entity @s

execute store result score #temp myriad.dummy run data get storage myriad:temp root.villager_data.VillagerData.level
execute unless score @s myriad.dummy2 = #temp myriad.dummy run return run function myriad:entity/archaeologist/level_up/main

execute if data storage myriad:temp root.villager_data{Xp:0} unless data storage myriad:temp root.villager_data.Brain.memories."minecraft:job_site".value run return run function myriad:entity/archaeologist/reset

execute unless data storage myriad:temp root.villager_data{HurtTime:0s} run return run function myriad:entity/archaeologist/hurt
item replace entity @s armor.head with minecraft:stone[minecraft:item_model="myriad:entity/archaeologist/head",minecraft:custom_model_data={flags:[false]}]