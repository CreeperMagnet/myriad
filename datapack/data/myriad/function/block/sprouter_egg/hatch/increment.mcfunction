# Keeps track of the hatch value

setblock ~ ~ ~ minecraft:sniffer_egg[hatch=0]
execute if entity @s[nbt={item:{components:{"minecraft:custom_model_data":{floats:[0.0f]}}}}] run return run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 1.0f
execute if entity @s[nbt={item:{components:{"minecraft:custom_model_data":{floats:[1.0f]}}}}] run return run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 2.0f
execute if entity @s[nbt={item:{components:{"minecraft:custom_model_data":{floats:[2.0f]}}}}] run function myriad:block/sprouter_egg/hatch/spawn_baby