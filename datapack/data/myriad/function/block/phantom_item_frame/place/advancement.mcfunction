# Commands for placing a phantom item frame (player side)

execute as @n[type=minecraft:item_frame,tag=myriad.phantom_item_frame.initiate] at @s run function myriad:block/phantom_item_frame/place/initiate
advancement revoke @s only myriad:technical/item_used_on_block/place_phantom_item_frame
