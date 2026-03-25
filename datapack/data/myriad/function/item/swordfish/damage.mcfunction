# Actually deals the swordfish damage

tag @s remove myriad.scheduled.swordfish_damage
damage @s[tag=myriad.scheduled.swordfish_damage.10] 10.0 myriad:swordfish_eat by @s from @s
damage @s[tag=myriad.scheduled.swordfish_damage.14] 14.0 myriad:swordfish_eat by @s from @s
damage @s[tag=myriad.scheduled.swordfish_damage.18] 18.0 myriad:swordfish_eat by @s from @s
damage @s[tag=myriad.scheduled.swordfish_damage.22] 22.0 myriad:swordfish_eat by @s from @s
damage @s[tag=myriad.scheduled.swordfish_damage.26] 26.0 myriad:swordfish_eat by @s from @s
damage @s[tag=myriad.scheduled.swordfish_damage.30] 30.0 myriad:swordfish_eat by @s from @s
advancement grant @s[gamemode=!creative,nbt=!{Health:0.0f},tag=myriad.scheduled.swordfish_damage.30] only myriad:minecraft/husbandry/swordfish
tag @s remove myriad.scheduled.swordfish_damage.10
tag @s remove myriad.scheduled.swordfish_damage.14
tag @s remove myriad.scheduled.swordfish_damage.18
tag @s remove myriad.scheduled.swordfish_damage.22
tag @s remove myriad.scheduled.swordfish_damage.26
tag @s remove myriad.scheduled.swordfish_damage.30