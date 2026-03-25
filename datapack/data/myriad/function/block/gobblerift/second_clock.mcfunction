# Second commands for gobblerift

execute if entity @s[tag=myriad.gobblerift.juice_ready] run particle minecraft:dragon_breath ~ ~1.3 ~ 0.1 0 0.1 0.01 4

execute if entity @s[tag=myriad.gobblerift.digesting,predicate=myriad:random_chance/0.1,tag=!myriad.silent] run playsound myriad:block.gobblerift.digest block @a[distance=..16]
execute if entity @s[tag=myriad.gobblerift.hungry,predicate=myriad:random_chance/0.1,tag=!myriad.silent] run playsound myriad:block.gobblerift.hungry block @a[distance=..16]