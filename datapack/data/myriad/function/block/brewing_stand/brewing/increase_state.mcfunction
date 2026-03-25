# Increases the state of the brewing stand

execute unless entity @s[scores={myriad.dummy2=1..}] run function myriad:block/brewing_stand/brewing/start
execute if entity @s[scores={myriad.dummy2=1..}] store result block ~ ~ ~ BrewTime short 1 run scoreboard players remove @s myriad.dummy2 1