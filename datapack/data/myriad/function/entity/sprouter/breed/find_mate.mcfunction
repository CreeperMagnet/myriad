# Takes the data from the sprouter's mate

data modify storage myriad:temp root.pos set from entity @s Pos
execute as @n[type=minecraft:wandering_trader,distance=0.001..2,tag=myriad.sprouter,tag=myriad.in_love] at @s run function myriad:entity/sprouter/breed/set_tags
execute if data storage myriad:temp root.bred run function myriad:entity/sprouter/breed/set_tags_female
