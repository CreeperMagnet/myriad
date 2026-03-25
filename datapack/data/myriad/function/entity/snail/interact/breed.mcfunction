# Sets the tags for a snail you just bred

tag @s add myriad.in_love
particle minecraft:heart ~ ~ ~ 0.5 0.5 0.5 1 15 normal
execute if entity @s[tag=!myriad.silent] run playsound myriad:entity.snail.feed neutral @a[distance=..16]
