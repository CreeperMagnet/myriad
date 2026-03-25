# Commands to run off a snail every second

execute if entity @s[scores={myriad.dummy2=1..},tag=!myriad.baby] run function myriad:entity/snail/beetroot_boost
execute if entity @s[scores={myriad.dummy2=1..},tag=myriad.baby] run function myriad:entity/snail/baby/clock
execute if entity @s[tag=myriad.breeding_cooldown] run function myriad:entity/snail/breed/cooldown_loop
execute if entity @s[predicate=myriad:location_check/in_water] if biome ~ ~ ~ #myriad:water_hurts_snails run damage @s 1.0 myriad:snail_salt
execute if entity @s[tag=myriad.pregnant] at @s align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ minecraft:clay unless entity @e[distance=..0.5,tag=smithed.block] run function myriad:entity/snail/breed/lay_egg/loop
execute if entity @s[tag=myriad.in_love] run function myriad:entity/snail/breed/pathfind
execute if entity @s[nbt={Invulnerable:1b}] run data modify entity @s Invulnerable set value 0b
data remove entity @s Offers.Recipes