# Teleports you to your death location using riftjuice code

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.x set from entity @s LastDeathLocation.pos[0]
data modify storage myriad:temp root.macro_input.y set from entity @s LastDeathLocation.pos[1]
data modify storage myriad:temp root.macro_input.z set from entity @s LastDeathLocation.pos[2]
data modify storage myriad:temp root.macro_input.dimension set from entity @s LastDeathLocation.dimension
function myriad:technical/macros/teleport with storage myriad:temp root.macro_input