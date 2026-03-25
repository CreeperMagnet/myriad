# Triggers when players click a phantom item frame

execute if entity @s[advancements={myriad:technical/player_interacted_with_entity/phantom_item_frame={add_item=true}}] as @n[type=minecraft:item_frame,nbt={Item:{}},tag=!myriad.phantom_item_frame.has_item] at @s run function myriad:block/phantom_item_frame/interact/add_item_as_entity
execute if entity @s[advancements={myriad:technical/player_interacted_with_entity/phantom_item_frame={rotate=true}}] run function myriad:block/phantom_item_frame/rotate/main
advancement revoke @s only myriad:technical/player_interacted_with_entity/phantom_item_frame