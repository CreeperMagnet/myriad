# Gives you a compendium

execute if entity @s[gamemode=spectator] run return 0

clear @s minecraft:written_book[minecraft:custom_data~{myriad:{id:"compendium"}}]
clear @s minecraft:written_book[minecraft:custom_data~{myriad:{id:"unlockable_compendium"}}]

loot give @s[tag=!myriad.compendium_ban,tag=myriad.unlockable_compendium] loot myriad:items/compendium_unlockable
loot give @s[tag=!myriad.compendium_ban,tag=!myriad.unlockable_compendium] loot myriad:items/compendium
