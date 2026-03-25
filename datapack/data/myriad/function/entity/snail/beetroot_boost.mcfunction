# Commands to run if a snail has a beetroot boost

scoreboard players remove @s myriad.dummy2 1
tag @s[scores={myriad.dummy2=0}] remove myriad.fed_beetroot
tag @s[scores={myriad.dummy2=0}] remove myriad.fed_heartbeet
execute if entity @s[predicate=myriad:random_chance/0.01,tag=!myriad.fed_heartbeet] run loot spawn ~ ~ ~ loot myriad:gameplay/snail_slime
execute if entity @s[predicate=myriad:random_chance/0.05,tag=myriad.fed_heartbeet] run loot spawn ~ ~ ~ loot myriad:gameplay/snail_slime
