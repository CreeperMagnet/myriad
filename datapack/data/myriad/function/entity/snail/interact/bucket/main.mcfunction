# Commands to run for bucketing the snail

data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.snail set from entity @s {}
execute if entity @s[scores={myriad.dummy2=1..},tag=!myriad.baby] store result storage myriad:temp root.item.components."minecraft:custom_data".myriad.snail_boost_timer int 1 run scoreboard players get @s myriad.dummy2
execute if entity @s[scores={myriad.dummy2=1..},tag=myriad.baby] store result storage myriad:temp root.item.components."minecraft:custom_data".myriad.age int 1 run scoreboard players get @s myriad.dummy2
data remove storage myriad:temp root.item.components."minecraft:custom_data".myriad.snail.Pos
data remove storage myriad:temp root.item.components."minecraft:custom_data".myriad.snail.Motion
data remove storage myriad:temp root.item.components."minecraft:custom_data".myriad.snail.UUID
data remove storage myriad:temp root.item.components."minecraft:custom_data".myriad.snail.CustomName
data merge storage myriad:temp {root:{item:{components:{"minecraft:custom_model_data":{flags:[false],strings:["brown"]}}}}}
execute if entity @s[tag=myriad.baby] run data modify storage myriad:temp root.item.components."minecraft:custom_model_data".flags[0] set value true
execute if entity @s[tag=myriad.snail.black] run data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[0] set value "black"
execute if entity @s[tag=myriad.snail.brown] run data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[0] set value "brown"
execute if entity @s[tag=myriad.snail.light_blue] run data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[0] set value "light_blue"
execute if entity @s[tag=myriad.snail.skull] run data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[0] set value "skull"
execute if entity @s[tag=myriad.snail.spiral] run data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[0] set value "spiral"
execute if entity @s[tag=myriad.snail.yellow] run data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[0] set value "yellow"

execute if entity @s[nbt=!{CustomName:{"translate":"entity.myriad.snail"}}] run data modify storage myriad:temp root.item.components."minecraft:custom_name" set from entity @s CustomName
execute if entity @s[tag=!myriad.silent] run playsound myriad:entity.snail.bucket neutral @a[distance=..16]
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.id set value "snail_bucket"
tp @s ~ -1000 ~