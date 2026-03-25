# Effects to give to mobs that are within the frostbloom's radius with a certain entity tag

damage @s[type=#minecraft:freeze_hurts_extra_types] 1.0 myriad:frostbloom_freeze
execute if entity @s[type=minecraft:blaze,nbt={Health:0.0f}] run advancement grant @a[distance=..10] only myriad:minecraft/adventure/kill_blaze_with_frostbloom
effect give @s[type=minecraft:snow_golem] minecraft:instant_health
