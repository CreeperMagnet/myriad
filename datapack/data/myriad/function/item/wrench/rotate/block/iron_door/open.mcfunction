# Rotates a block

data modify storage myriad:temp root.macro_input set value {"file":"open","rotation":"none","mirror":"none"}
execute if block ~ ~ ~ minecraft:iron_door[open=true] run data modify storage myriad:temp root.macro_input.file set value "closed"
execute if block ~ ~ ~ minecraft:iron_door[hinge=right] run data modify storage myriad:temp root.macro_input.mirror set value "front_back"
execute if block ~ ~ ~ minecraft:iron_door[facing=east] run data modify storage myriad:temp root.macro_input.rotation set value "clockwise_90"
execute if block ~ ~ ~ minecraft:iron_door[facing=south] run data modify storage myriad:temp root.macro_input.rotation set value "180"
execute if block ~ ~ ~ minecraft:iron_door[facing=west] run data modify storage myriad:temp root.macro_input.rotation set value "counterclockwise_90"
function myriad:item/wrench/rotate/block/iron_door/macro with storage myriad:temp root.macro_input