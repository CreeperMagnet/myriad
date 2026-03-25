# Commands to place a soul seer

setblock ~ ~ ~ minecraft:air
summon minecraft:item_display ~ ~1 ~ {Tags:["myriad.soul_seer","myriad.block","myriad.item_display","myriad.prevents_hoppers","smithed.block","smithed.entity","myriad.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":"myriad:block/soul_seer","minecraft:custom_model_data":{"flags":[false]}}},view_range:4.0f}
function myriad:block/hopper_updating/fill
setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=false]{CustomName:{"font":"myriad:technical","translate":"block.myriad.soul_seer.name"},"components":{"minecraft:custom_data":{"myriad":{block_id:"soul_seer"}}},lock:{"components":{"minecraft:custom_data":{"myriad":{locked:1b}}}}}
