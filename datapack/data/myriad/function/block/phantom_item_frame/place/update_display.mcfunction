# Updates the display entity to ride the item frame

execute at @s if block ~ ~ ~ #myriad:opaque run function myriad:block/update_light/main

ride @s mount @n[type=minecraft:item_frame,tag=myriad.phantom_item_frame]
tag @s remove myriad.phantom_item_frame.update
