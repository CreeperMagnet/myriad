# The generic particle for breaking a square block (takes from item display data)

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.item set from entity @s item
data merge storage myriad:temp {root:{macro_input:{dx:0.4,dy:0.4,dz:0.4,speed:0.07,count:100}}}
function myriad:block/break_particles/macro with storage myriad:temp root.macro_input
