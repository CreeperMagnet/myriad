# Makes riftjuice teleportation cross-dimensionally work properly, and also adds a failsafe condition

particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.05 100 force
playsound myriad:block.gobblerift.teleport_player block @a[distance=..16]
data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.x set from storage myriad:temp root.riftjuice.pos[0]
data modify storage myriad:temp root.macro_input.y set from storage myriad:temp root.riftjuice.pos[1]
data modify storage myriad:temp root.macro_input.z set from storage myriad:temp root.riftjuice.pos[2]
data modify storage myriad:temp root.macro_input.dimension set from storage myriad:temp root.riftjuice.dimension
function myriad:technical/macros/teleport with storage myriad:temp root.macro_input
execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.05 100 force
execute at @s run playsound myriad:block.gobblerift.teleport_player block @a[distance=..16]