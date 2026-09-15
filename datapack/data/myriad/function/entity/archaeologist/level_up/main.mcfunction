# Levels up a villager if it hasn't been already

execute if entity @s[scores={myriad.dummy2=1}] run function myriad:entity/archaeologist/level_up/2
execute if entity @s[scores={myriad.dummy2=2}] run function myriad:entity/archaeologist/level_up/3
execute if entity @s[scores={myriad.dummy2=3}] run function myriad:entity/archaeologist/level_up/4
execute if entity @s[scores={myriad.dummy2=4}] run function myriad:entity/archaeologist/level_up/5
execute store result score @s myriad.dummy2 run data get storage myriad:temp root.villager_data.VillagerData.level