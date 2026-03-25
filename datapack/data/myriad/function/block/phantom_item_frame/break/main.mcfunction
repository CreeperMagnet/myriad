# Commands for breaking the frame

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:item_frame"},Age:0s},nbt=!{Item:{components:{"minecraft:custom_data":{myriad:{}}}}}] at @s run function myriad:block/phantom_item_frame/break/kill_item
playsound myriad:entity.phantom_item_frame.break block @a[distance=..16]
kill @s
