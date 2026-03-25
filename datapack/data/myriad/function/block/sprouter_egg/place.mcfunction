# Rotates the block you're looking at

summon minecraft:item_display ~ ~ ~ {Tags:["myriad.block","myriad.item_display","myriad.sprouter_egg","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/sprouter_egg","minecraft:custom_model_data":{"floats":[0.0f]}}},view_range:4.0f}
setblock ~ ~ ~ minecraft:sniffer_egg destroy
scoreboard players reset @s myriad.dummy
playsound minecraft:block.metal.place block @a[distance=..16]

execute if predicate myriad:entity_properties/slots/weapon.mainhand/sprouter_egg run return run function myriad:technical/macros/reduce_count_and_swing {slot:"mainhand"}
function myriad:technical/macros/reduce_count_and_swing {slot:"offhand"}