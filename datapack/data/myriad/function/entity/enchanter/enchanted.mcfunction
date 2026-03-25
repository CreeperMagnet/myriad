# Gives an entity enchanter effects

effect give @s minecraft:strength 20 0
data modify entity @s active_effects[{id:"minecraft:strength"}].show_particles set value 0b
effect give @s minecraft:resistance 20 4
data modify entity @s active_effects[{id:"minecraft:resistance"}].show_particles set value 0b
effect give @s minecraft:regeneration 20 4
data modify entity @s active_effects[{id:"minecraft:regeneration"}].show_particles set value 0b
particle minecraft:enchant ~ ~2 ~ 0.2 0.1 0.2 1 10 normal