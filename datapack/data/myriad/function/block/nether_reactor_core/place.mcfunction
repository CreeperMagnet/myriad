# Commands for placing a nether reactor

summon minecraft:item_display ~ ~1 ~ {Tags:["myriad.block","myriad.item_display","myriad.nether_reactor_core","smithed.entity","smithed.block","myriad.newly_placed_update_light"],transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":"myriad:block/nether_reactor_core","minecraft:custom_model_data":{flags:[false]}}},view_range:4.0f}
execute as @n[type=minecraft:item_display,tag=myriad.nether_reactor_core,tag=!myriad.nether_reactor_core.on] at @s run function myriad:block/nether_reactor_core/check_casing/off
setblock ~ ~ ~ minecraft:obsidian
