# Commands to run for feeding a baby sprouter

scoreboard players add @s myriad.dummy2 30
execute if entity @s[tag=myriad.baby,scores={myriad.dummy2=1200..},tag=!myriad.age_locked] run function myriad:entity/sprouter/grow_up
particle minecraft:happy_villager ~ ~0.5 ~ 0.25 0.5 0.25 1 5 normal
playsound myriad:entity.sprouter.eat neutral @a[distance=..16] ~ ~ ~ 1 1.5