# Commands to run if a snail is a baby

scoreboard players remove @s myriad.dummy2 1
execute if entity @s[scores={myriad.dummy2=0},tag=!myriad.age_locked] run function myriad:entity/snail/baby/grow_up