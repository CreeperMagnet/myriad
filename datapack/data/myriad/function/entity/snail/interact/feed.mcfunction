# Commands to run for feeding a snail beetroot

effect give @s[tag=!myriad.baby] minecraft:regeneration 10
tag @s[tag=!myriad.baby] add myriad.fed_beetroot
scoreboard players set @s[tag=!myriad.baby] myriad.dummy2 1200
scoreboard players remove @s[tag=myriad.baby] myriad.dummy2 30
execute if entity @s[tag=myriad.baby,scores={myriad.dummy2=..0},tag=!myriad.age_locked] run function myriad:entity/snail/baby/grow_up
particle minecraft:happy_villager ~ ~ ~ 0.25 0.25 0.25 1 5 normal
playsound myriad:entity.snail.feed neutral @a[distance=..16]
