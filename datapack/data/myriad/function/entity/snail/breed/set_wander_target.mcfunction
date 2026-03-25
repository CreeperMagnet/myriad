# Modifies this entity's wander target to have new data from storage

effect give @s minecraft:speed 600 20 true
data modify entity @s wander_target set value [I;0,0,0]
execute store result entity @s wander_target[0] int 1 run data get storage myriad:temp root.pos[0]
execute store result entity @s wander_target[1] int 1 run data get storage myriad:temp root.pos[1]
execute store result entity @s wander_target[2] int 1 run data get storage myriad:temp root.pos[2]
