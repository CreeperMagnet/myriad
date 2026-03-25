# Scans for placed custom blocks

execute align xyz positioned ~0.5 ~ ~0.5 run function myriad:block/placement/check_blocks
scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^1 run function myriad:block/placement/raycast