# Plays ambient noises based on which mob it is

# These are ordered by rarity of mob, so hopefully it short-circuits early and saves a few iotas of performance
execute if entity @s[tag=myriad.geomancer] run return run playsound myriad:entity.geomancer.ambient hostile @a[distance=..16]
execute if entity @s[tag=myriad.wandering_witch] run return run playsound myriad:entity.wandering_witch.ambient neutral @a[distance=..16]
execute if entity @s[tag=myriad.sprouter,tag=!myriad.baby] run return run playsound myriad:entity.sprouter.ambient neutral @a[distance=..16]
execute if entity @s[tag=myriad.sprouter] run return run playsound myriad:entity.sprouter.ambient neutral @a[distance=..16] ~ ~ ~ 1 1.5
execute if entity @s[tag=myriad.iceologer] run return run playsound myriad:entity.iceologer.ambient hostile @a[distance=..16]
execute if entity @s[tag=myriad.enchanter] run return run playsound myriad:entity.enchanter.ambient hostile @a[distance=..16]
execute if entity @s[tag=myriad.snail,name="Gary"] run return run playsound myriad:entity.snail.gary_meow neutral @a[distance=..16]