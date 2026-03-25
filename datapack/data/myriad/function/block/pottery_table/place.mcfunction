# Commands for placing a pottery table

data remove storage myriad:temp root
data modify storage myriad:temp root.name set value {"translate":"block.myriad.pottery_table"}
execute if data block ~ ~ ~ CustomName run data modify storage myriad:temp root.name set from block ~ ~ ~ CustomName
setblock ~ ~ ~ minecraft:air
summon minecraft:item_display ~ ~1 ~ {Tags:["myriad.block","myriad.item_display","myriad.pottery_table","smithed.entity","smithed.block","myriad.prevents_hoppers","myriad.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},data:{myriad:{old_barrel_items:[],current_barrel_items:[]}},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/pottery_table"}},view_range:4.0f}
function myriad:block/hopper_updating/fill
setblock ~ ~ ~ minecraft:barrel{CustomName:{"translate":"block.myriad.pottery_table.gui","font":"myriad:pottery_table","color":"white","with":[{"text":"","color":"#3F3F3F","font":"minecraft:default","extra":[""]}]},components:{"minecraft:custom_data":{myriad:{block_id:"pottery_table"}}}}
data modify block ~ ~ ~ CustomName.with[0].extra[0] set from storage myriad:temp root.name