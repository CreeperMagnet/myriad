# Finds the dyeable block you are looking at

## Color blocks
execute positioned ^ ^ ^0.01 align xyz if block ~ ~ ~ #myriad:paintbrush/dyeable run return run function myriad:item/paintbrush/color_block

## Here we go again...
scoreboard players remove @s myriad.dummy 1
execute if entity @s[scores={myriad.dummy=1..}] positioned ^ ^ ^0.01 if predicate myriad:location_check/paintbrush_raycast_ignore run function myriad:item/paintbrush/raycast
