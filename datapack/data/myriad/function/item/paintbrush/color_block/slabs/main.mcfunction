# Sets a specific color of stairs while maintaining blockstate (pain(t)fully)

# Default blockstate values
$data modify storage myriad:temp root.paintbrush set value {id:"$(id)",waterlogged:"false",type:"bottom"}

execute if block ~ ~ ~ #minecraft:slabs[waterlogged=true] run data modify storage myriad:temp root.paintbrush.waterlogged set value "true"

execute if block ~ ~ ~ #minecraft:slabs[type=double] run data modify storage myriad:temp root.paintbrush.type set value "double"
execute if block ~ ~ ~ #minecraft:slabs[type=top] run data modify storage myriad:temp root.paintbrush.type set value "top"

function myriad:item/paintbrush/color_block/slabs/macro with storage myriad:temp root.paintbrush