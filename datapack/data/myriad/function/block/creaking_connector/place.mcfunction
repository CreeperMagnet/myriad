# Summons the actual entity for the creaking connector

data remove storage myriad:temp root
data modify storage myriad:temp root.name set from block ~ ~ ~ CustomName
data modify storage myriad:temp root.id set from block ~ ~ ~ components."minecraft:custom_data".myriad.creaking_connector_id

setblock ~ ~ ~ minecraft:air
summon minecraft:item_display ~ ~1 ~ {Tags:["myriad.creaking_connector","myriad.creaking_connector.initiate","myriad.block","myriad.item_display","myriad.prevents_hoppers","smithed.block","smithed.entity","myriad.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/creaking_connector","minecraft:custom_model_data":{"flags":[false]}}},view_range:4.0f}
function myriad:block/hopper_updating/fill
setblock ~ ~ ~ minecraft:furnace{CustomName:{"font":"myriad:technical","translate":"block.myriad.creaking_connector.name"},"components":{"minecraft:custom_data":{"myriad":{block_id:"creaking_connector"}}},lock:{"components":{"minecraft:custom_data":{"myriad":{locked:1b}}}}}
execute as @n[type=minecraft:item_display,tag=myriad.creaking_connector.initiate] run function myriad:block/creaking_connector/initiate