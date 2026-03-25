# Pathfinds one snail to another

data remove entity @s wander_target
data remove storage myriad:temp root
execute as @n[type=minecraft:wandering_trader,distance=0.0001..5,tag=myriad.in_love,tag=myriad.snail] at @s run function myriad:entity/snail/breed/find_mate
execute if data storage myriad:temp root.pos run function myriad:entity/snail/breed/set_wander_target
