# Places a frostbloom

execute unless block ~ ~-1 ~ #myriad:snowy_dirts run summon minecraft:item_display ~ ~ ~ {Tags:["myriad.block","myriad.item_display","myriad.frostbloom","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/frostbloom","minecraft:custom_model_data":{"flags":[true]}}},view_range:4.0f}
execute if block ~ ~-1 ~ #myriad:snowy_dirts run summon minecraft:item_display ~ ~ ~ {Tags:["myriad.block","myriad.item_display","myriad.frostbloom","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/frostbloom","minecraft:custom_model_data":{"flags":[false]}}},view_range:4.0f}
setblock ~ ~ ~ minecraft:spruce_sapling
scoreboard players reset @s myriad.dummy
playsound minecraft:block.grass.place block @a[distance=..16]
advancement grant @s only myriad:minecraft/adventure/plant_frostbloom

execute if predicate myriad:entity_properties/slots/weapon.mainhand/frostbloom run return run function myriad:technical/macros/reduce_count_and_swing {slot:"mainhand"}
function myriad:technical/macros/reduce_count_and_swing {slot:"offhand"}