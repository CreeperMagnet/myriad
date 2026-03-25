# Decrements custom model data on root.item

scoreboard players reset @s myriad.dummy
execute store result score @s myriad.dummy run data get storage myriad:temp root.item.components."minecraft:custom_model_data".floats[0]
execute store result storage myriad:temp root.item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s myriad.dummy 1
