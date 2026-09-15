# Sets a specific color of stairs while maintaining blockstate (pain(t)fully)

# Default blockstate values
$data modify storage myriad:temp root.paintbrush set value {id:"$(id)",waterlogged:"false",half:"bottom",facing:"north",shape:"straight"}

execute if block ~ ~ ~ #minecraft:stairs[facing=north] run data modify storage myriad:temp root.paintbrush.facing set value "north"
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run data modify storage myriad:temp root.paintbrush.facing set value "south"
execute if block ~ ~ ~ #minecraft:stairs[facing=east] run data modify storage myriad:temp root.paintbrush.facing set value "east"
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run data modify storage myriad:temp root.paintbrush.facing set value "west"

execute if block ~ ~ ~ #minecraft:stairs[waterlogged=true] run data modify storage myriad:temp root.paintbrush.waterlogged set value "true"

execute if block ~ ~ ~ #minecraft:stairs[half=top] run data modify storage myriad:temp root.paintbrush.half set value "top"

execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run data modify storage myriad:temp root.paintbrush.shape set value "inner_left"
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run data modify storage myriad:temp root.paintbrush.shape set value "inner_right"
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run data modify storage myriad:temp root.paintbrush.shape set value "outer_left"
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run data modify storage myriad:temp root.paintbrush.shape set value "outer_right"

function myriad:item/paintbrush/color_block/stairs/macro with storage myriad:temp root.paintbrush