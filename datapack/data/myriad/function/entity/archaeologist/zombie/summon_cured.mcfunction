# Summons a cured archaeologist

data remove storage myriad:temp root
data modify storage myriad:temp root.zombie_data set from entity @s {}
playsound minecraft:entity.zombie_villager.converted neutral @a[distance=..16]
data modify storage myriad:temp root.macro_input.UUID set from storage myriad:temp root.zombie_data.ConversionPlayer
execute summon minecraft:villager run function myriad:entity/archaeologist/zombie/set_cured_tags with storage myriad:temp root.macro_input
tp @s ~ ~-1000 ~
