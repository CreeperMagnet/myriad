# Places a NEW item frame entity with a display entity riding it

playsound myriad:entity.phantom_item_frame.place block @a[distance=..16]

execute store result score @s myriad.dummy run data get entity @s Facing

execute if entity @s[scores={myriad.dummy=0}] run summon minecraft:item_frame ~ ~ ~ {Tags:["myriad.phantom_item_frame","smithed.entity"],Facing:0b,Invisible:1b,Silent:1b}
execute if entity @s[scores={myriad.dummy=1}] run summon minecraft:item_frame ~ ~ ~ {Tags:["myriad.phantom_item_frame","smithed.entity"],Facing:1b,Invisible:1b,Silent:1b}
execute if entity @s[scores={myriad.dummy=2}] run summon minecraft:item_frame ~ ~ ~ {Tags:["myriad.phantom_item_frame","smithed.entity"],Facing:2b,Invisible:1b,Silent:1b}
execute if entity @s[scores={myriad.dummy=3}] run summon minecraft:item_frame ~ ~ ~ {Tags:["myriad.phantom_item_frame","smithed.entity"],Facing:3b,Invisible:1b,Silent:1b}
execute if entity @s[scores={myriad.dummy=4}] run summon minecraft:item_frame ~ ~ ~ {Tags:["myriad.phantom_item_frame","smithed.entity"],Facing:4b,Invisible:1b,Silent:1b}
execute if entity @s[scores={myriad.dummy=5}] run summon minecraft:item_frame ~ ~ ~ {Tags:["myriad.phantom_item_frame","smithed.entity"],Facing:5b,Invisible:1b,Silent:1b}

execute if entity @s[scores={myriad.dummy=0}] run summon minecraft:item_display ~ ~.5 ~ {Tags:["myriad.item_display","myriad.phantom_item_frame","myriad.phantom_item_frame.update","smithed.entity","myriad.block"],Rotation:[0.0f,90.0f],transformation:{right_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},translation:[0.0f,0.5f,0.5f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/phantom_item_frame"}},view_range:4.0f}
execute if entity @s[scores={myriad.dummy=1}] run summon minecraft:item_display ~ ~.5 ~ {Tags:["myriad.item_display","myriad.phantom_item_frame","myriad.phantom_item_frame.update","smithed.entity","myriad.block"],Rotation:[0.0f,-90.0f],transformation:{right_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0.0f,axis:[0.0f,0.0f,0.0f]},translation:[0.0f,0.5f,-0.5f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/phantom_item_frame"}},view_range:4.0f}
execute if entity @s[scores={myriad.dummy=2}] run summon minecraft:item_display ~ ~.5 ~ {Tags:["myriad.item_display","myriad.phantom_item_frame","myriad.phantom_item_frame.update","smithed.entity","myriad.block"],Rotation:[180.0f,0.0f],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/phantom_item_frame"}},view_range:4.0f}
execute if entity @s[scores={myriad.dummy=3}] run summon minecraft:item_display ~ ~.5 ~ {Tags:["myriad.item_display","myriad.phantom_item_frame","myriad.phantom_item_frame.update","smithed.entity","myriad.block"],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/phantom_item_frame"}},view_range:4.0f}
execute if entity @s[scores={myriad.dummy=4}] run summon minecraft:item_display ~ ~.5 ~ {Tags:["myriad.item_display","myriad.phantom_item_frame","myriad.phantom_item_frame.update","smithed.entity","myriad.block"],Rotation:[90.0f,0.0f],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/phantom_item_frame"}},view_range:4.0f}
execute if entity @s[scores={myriad.dummy=5}] run summon minecraft:item_display ~ ~.5 ~ {Tags:["myriad.item_display","myriad.phantom_item_frame","myriad.phantom_item_frame.update","smithed.entity","myriad.block"],Rotation:[-90.0f,0.0f],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/phantom_item_frame"}},view_range:4.0f}

kill @s

execute as @e[type=minecraft:item_display,tag=myriad.phantom_item_frame.update] run function myriad:block/phantom_item_frame/place/update_display
