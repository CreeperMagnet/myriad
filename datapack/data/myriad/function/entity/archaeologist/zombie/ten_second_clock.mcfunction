# Checks if the zombie is cured yet

execute unless predicate myriad:time_check/night if dimension minecraft:overworld positioned over motion_blocking if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s Fire set value 200s
execute store result score @s myriad.dummy run data get entity @s ConversionTime
execute if score @s myriad.dummy matches 0..300 run function myriad:entity/archaeologist/zombie/summon_cured
