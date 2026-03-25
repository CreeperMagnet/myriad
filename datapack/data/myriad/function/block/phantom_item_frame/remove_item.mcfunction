# Edits a phantom item frame to display the base

playsound myriad:entity.phantom_item_frame.remove_item block @a[distance=..16]
# Set empty display invisible
data modify entity @s item.components."minecraft:item_model" set value "myriad:block/phantom_item_frame"
execute on vehicle run tag @s remove myriad.phantom_item_frame.has_item