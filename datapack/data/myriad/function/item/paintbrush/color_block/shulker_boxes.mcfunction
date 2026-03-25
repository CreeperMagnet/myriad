# Colors a shulker box

data modify storage myriad:temp root.paintbrush set from block ~ ~ ~ {}
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=up] run setblock ~ ~ ~ minecraft:$(color)_shulker_box[facing=up]
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=down] run setblock ~ ~ ~ minecraft:$(color)_shulker_box[facing=down]
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=north] run setblock ~ ~ ~ minecraft:$(color)_shulker_box[facing=north]
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=south] run setblock ~ ~ ~ minecraft:$(color)_shulker_box[facing=south]
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=east] run setblock ~ ~ ~ minecraft:$(color)_shulker_box[facing=east]
$execute if block ~ ~ ~ #minecraft:shulker_boxes[facing=west] run setblock ~ ~ ~ minecraft:$(color)_shulker_box[facing=west]
data modify block ~ ~ ~ Items set from storage myriad:temp root.paintbrush.Items
data modify block ~ ~ ~ CustomName set from storage myriad:temp root.paintbrush.CustomName
