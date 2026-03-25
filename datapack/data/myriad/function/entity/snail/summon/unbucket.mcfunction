# Initiates the proper data for a newly spawned snail from a bucket

data modify entity @s {} merge from storage myriad:temp root.snail_bucket.components."minecraft:custom_data".myriad.snail
data modify entity @s Invulnerable set value 1b
execute store result score @s[tag=!myriad.baby] myriad.dummy2 run data get storage myriad:temp root.snail_bucket.components."minecraft:custom_data".myriad.snail_boost_timer
execute store result score @s[tag=myriad.baby] myriad.dummy2 run data get storage myriad:temp root.snail_bucket.components."minecraft:custom_data".myriad.age
execute at @s[scores={myriad.dummy2=1..},tag=!myriad.baby] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute if data storage myriad:temp root.snail_bucket.components."minecraft:custom_name" run data modify entity @s equipment.chest.components."minecraft:custom_name" set from storage myriad:temp root.snail_bucket.components."minecraft:custom_name"
execute if data storage myriad:temp root.snail_bucket.components."minecraft:custom_name" run data modify entity @s CustomName set from storage myriad:temp root.snail_bucket.components."minecraft:custom_name"
data remove entity @s Offers.Recipes
data remove storage myriad:temp root
