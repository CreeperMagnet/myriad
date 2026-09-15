# Increases the state of the brewing stand

execute unless score @s myriad.dummy2 matches 1.. run function myriad:block/brewing_stand/brewing/start
execute if score @s myriad.dummy2 matches 1.. store result block ~ ~ ~ BrewTime int 1 run scoreboard players remove @s myriad.dummy2 1