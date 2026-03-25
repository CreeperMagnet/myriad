# Makes the various phases of a snail laying an egg

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run data get entity @s data.myriad.egg_phase
execute if entity @s[scores={myriad.dummy=4..}] positioned ~ ~-0.5 ~ run function myriad:entity/snail/breed/lay_egg/set_block
execute unless data entity @s data.myriad.egg_phase run data modify entity @s data.myriad.egg_phase set value 1
execute store result entity @s data.myriad.egg_phase int 1 run scoreboard players add @s myriad.dummy 1
particle minecraft:block{block_state:"minecraft:clay"} ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 1 30 normal
execute if entity @s[tag=!myriad.silent] run playsound minecraft:block.gravel.break neutral @a[distance=..16]
