# Functions to run tickly off of ice, I guess.

execute unless block ~ ~-1 ~ minecraft:snow[layers=1] unless block ~ ~-1 ~ #myriad:iceologer_ice_ignore run function myriad:entity/iceologer/ice/land
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,tag=!myriad.iceologer,tag=!smithed.strict] run function myriad:entity/iceologer/ice/damage