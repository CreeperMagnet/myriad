# Plays death noises based on which mob it is

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{myriad:{entity:"enchanter"}}}}}] run playsound myriad:entity.enchanter.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{myriad:{entity:"iceologer"}}}}}] run playsound myriad:entity.iceologer.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{myriad:{entity:"geomancer"}}}}}] run playsound myriad:entity.geomancer.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{myriad:{entity:"wandering_witch"}}}}}] run playsound myriad:entity.wandering_witch.death neutral @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{myriad:{entity:"sprouter"}}}}}] run playsound myriad:entity.sprouter.death neutral @a[distance=..16]
execute unless entity @s[nbt=!{Item:{components:{"minecraft:custom_data":{myriad:{entity:"snail"}}}}},tag=!myriad.snail] run playsound myriad:entity.snail.hurt neutral @a[distance=..16]
