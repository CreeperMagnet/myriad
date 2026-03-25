# Decreases the breeding cooldown

execute store result score @s myriad.dummy run data get entity @s data.myriad.breeding_cooldown
execute if entity @s[scores={myriad.dummy=..0}] run tag @s remove myriad.breeding_cooldown
execute store result entity @s data.myriad.breeding_cooldown int 1 run scoreboard players remove @s myriad.dummy 1
data remove entity @s Offers.Recipes
