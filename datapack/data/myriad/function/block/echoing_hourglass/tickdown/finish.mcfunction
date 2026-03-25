# Finishes a stage of the echoing hourglass

tag @s add myriad.echoing_hourglass.finished
scoreboard players reset @s myriad.dummy2
execute on passengers if entity @s[tag=myriad.echoing_hourglass.powder_top] run data modify entity @s transformation.scale set value [0.999f,1.0f,0.999f]
execute on passengers if entity @s[tag=myriad.echoing_hourglass.powder_bottom] run data modify entity @s transformation.scale set value [0.999f,0.001f,0.999f]
execute on passengers run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "empty"
execute on passengers run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 0.0f

execute if predicate myriad:location_check/echoing_hourglass/any run function myriad:block/echoing_hourglass/tickdown/set_loot_result

execute if predicate myriad:location_check/echoing_hourglass/any run playsound myriad:block.echoing_hourglass.finish block @a[distance=..16]
execute unless predicate myriad:location_check/echoing_hourglass/any run playsound myriad:block.echoing_hourglass.finish_fail block @a[distance=..16]