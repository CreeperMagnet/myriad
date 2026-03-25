# Pathfinds one sprouter to another

data remove entity @s wander_target
data remove storage myriad:temp root
execute as @n[type=minecraft:wandering_trader,distance=0.0001..10,tag=myriad.in_love,tag=myriad.sprouter] at @s run function myriad:entity/sprouter/breed/find_mate
execute if data storage myriad:temp root.pos run function myriad:entity/sprouter/breed/set_wander_target
