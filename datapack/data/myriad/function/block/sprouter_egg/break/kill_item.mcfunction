# Kills item for egg

execute store result score #count myriad.dummy run data get entity @s Item.count
loot replace entity @s contents loot myriad:blocks/sprouter_egg