# Functions to run off of brewing stand markers every second

execute store result score @s myriad.dummy run data get block ~ ~ ~ BrewTime
execute if score @s myriad.dummy matches 1..22 run function myriad:block/brewing_stand/brewing/finish