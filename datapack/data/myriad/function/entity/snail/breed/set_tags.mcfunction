# Sets the data of one snail

data modify storage myriad:temp root.bred set value 1b
particle minecraft:heart ~ ~ ~ 0.5 0.5 0.5 1 15 normal
effect clear @s minecraft:speed
tag @s remove myriad.in_love
tag @s add myriad.breeding_cooldown
data modify entity @s data.myriad.breeding_cooldown set value 900
