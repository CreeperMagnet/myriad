# Commands to run for feeding a snail beetroot

playsound myriad:entity.snail.feed neutral @a[distance=..16]
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute if entity @s[tag=myriad.baby,tag=!myriad.age_locked] run return run function myriad:entity/snail/baby/grow_up
scoreboard players set @s myriad.dummy2 2400
tag @s add myriad.fed_heartbeet
tag @s add myriad.fed_beetroot
effect give @s minecraft:regeneration 30
