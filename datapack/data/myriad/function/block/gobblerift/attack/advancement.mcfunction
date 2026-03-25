# Commands to run when you hurt a gobblerift

data remove storage myriad:temp root
execute if items entity @s weapon.mainhand #myriad:gobblerift_instamine run data modify storage myriad:temp root.instamine set value 1b
execute if entity @s[gamemode=creative] run data modify storage myriad:temp root.instamine set value 1b
execute as @n[type=minecraft:interaction,tag=myriad.gobblerift,nbt={attack:{}}] at @s run function myriad:block/gobblerift/attack/as_interaction
advancement revoke @s only myriad:technical/player_hurt_entity/gobblerift