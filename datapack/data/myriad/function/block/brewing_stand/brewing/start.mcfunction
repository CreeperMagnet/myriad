# Starts the recipe process of a brewing recipe

scoreboard players set @s myriad.dummy2 400
execute store result score @s myriad.dummy run data get block ~ ~ ~ Fuel
execute store result block ~ ~ ~ Fuel int 1 run scoreboard players remove @s myriad.dummy 1
