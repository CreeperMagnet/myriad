# Plays hurt noises based on which mob it is

# These are ordered by rarity of mob, so hopefully it short-circuits early and saves a few iotas of performance
execute if entity @s[tag=myriad.wandering_witch] run return run playsound myriad:entity.wandering_witch.hurt neutral @a[distance=..16]
execute if entity @s[tag=myriad.geomancer] run return run playsound myriad:entity.geomancer.hurt hostile @a[distance=..16]
execute if entity @s[tag=myriad.snail] run return run playsound myriad:entity.snail.hurt neutral @a[distance=..16]
execute if entity @s[tag=myriad.sprouter,tag=!myriad.baby] run return run playsound myriad:entity.sprouter.hurt neutral @a[distance=..16]
execute if entity @s[tag=myriad.sprouter] run return run playsound myriad:entity.sprouter.hurt neutral @a[distance=..16] ~ ~ ~ 1 1.5
execute if entity @s[tag=myriad.iceologer] run return run playsound myriad:entity.iceologer.hurt hostile @a[distance=..16]
execute if entity @s[tag=myriad.enchanter] run return run playsound myriad:entity.enchanter.hurt hostile @a[distance=..16]
