# Checks all phantom item frames in a distance given by macro input

$execute as @e[type=minecraft:item_frame,distance=..$(distance),nbt={Item:{}},tag=myriad.phantom_item_frame.has_item] at @s run function myriad:block/phantom_item_frame/rotate/as_entity