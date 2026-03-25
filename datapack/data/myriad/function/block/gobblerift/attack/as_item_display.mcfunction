# Commands to increment the break state of a gobblerift when hurt

playsound myriad:block.gobblerift.hurt neutral @a[distance=..16]
execute if data storage myriad:temp root.instamine run function myriad:block/gobblerift/break/main
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:2}}}}] run function myriad:block/gobblerift/break/main
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:1}}}}] run data modify entity @s item.components."minecraft:custom_data".break_state set value 2
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:0}}}}] run data modify entity @s item.components."minecraft:custom_data".break_state set value 1
scoreboard players set @s myriad.dummy2 10
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value true
data remove entity @s attack