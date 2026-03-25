# Makes an item glow and last forever

data modify entity @s Age set value -32767s
team join myriad.recovery_compass @s
tag @s add myriad.recovery_compass_item
data modify entity @s Glowing set value 1b