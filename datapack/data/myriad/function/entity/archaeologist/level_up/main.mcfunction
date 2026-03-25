# Levels up a villager if it hasn't been already

execute if entity @s[nbt={VillagerData:{level:2}},tag=!myriad.archaeologist.level_2] run function myriad:entity/archaeologist/level_up/2
execute if entity @s[nbt={VillagerData:{level:3}},tag=!myriad.archaeologist.level_3] run function myriad:entity/archaeologist/level_up/3
execute if entity @s[nbt={VillagerData:{level:4}},tag=!myriad.archaeologist.level_4] run function myriad:entity/archaeologist/level_up/4
execute if entity @s[nbt={VillagerData:{level:5}},tag=!myriad.archaeologist.level_5] run function myriad:entity/archaeologist/level_up/5
