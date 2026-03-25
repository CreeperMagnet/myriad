# Toggles the reducedGoldenChorusFruitSpread gamerule

execute store result score @s myriad.dummy run data get storage myriad:gamerules reducedGoldenChorusFruitSpread
execute if entity @s[scores={myriad.dummy=..0}] run data modify storage myriad:gamerules reducedGoldenChorusFruitSpread set value 1b
execute if entity @s[scores={myriad.dummy=1..}] run data modify storage myriad:gamerules reducedGoldenChorusFruitSpread set value 0b
function myriad:entity/player/gamerule_tellraw/menu
