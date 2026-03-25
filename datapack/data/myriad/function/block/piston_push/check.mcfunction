# Ticking commands for piston push checking

scoreboard players remove @s[scores={myriad.dummy=1..}] myriad.dummy 1

execute if block ~ ~ ~ minecraft:moving_piston run function myriad:block/piston_push/move_inside
execute if block ~ ~ ~ minecraft:air run return run function myriad:block/piston_push/move_other

return 1
