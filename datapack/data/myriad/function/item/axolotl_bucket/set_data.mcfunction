# Buckets an axolotl

execute store result score @s myriad.dummy run data get storage myriad:temp root.item.components."minecraft:bucket_entity_data".Age
data modify storage myriad:temp root.item.components."minecraft:item_model" set value "myriad:axolotl_bucket"
data modify storage myriad:temp root.item.components."minecraft:custom_model_data" set value {flags:[false]}
execute if score @s myriad.dummy matches ..-1 run data modify storage myriad:temp root.item.components."minecraft:custom_model_data".flags[0] set value true