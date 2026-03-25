# Increments the comparator data on a soul seer entity

execute store result score @s myriad.dummy run data get entity @s item.components."minecraft:custom_data".comparator
execute store result entity @s item.components."minecraft:custom_data".comparator int 1 run scoreboard players add @s myriad.dummy 1
execute if data entity @s item.components."minecraft:custom_data"{comparator:0} run data modify entity @s item.components."minecraft:custom_data".comparator set value 1
