# Increments custom model data on an entity

execute store result score @s myriad.dummy run data get entity @s item.components."minecraft:custom_model_data".floats[0]
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s myriad.dummy 1