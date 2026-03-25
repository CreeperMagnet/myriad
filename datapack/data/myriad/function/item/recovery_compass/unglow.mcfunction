# Removes data from glowing item

execute if entity @s[nbt={Age:-32767s}] run return 0
tag @s remove myriad.recovery_compass_item
data modify entity @s Age set value 0s
team leave @s
data modify entity @s Glowing set value 0b