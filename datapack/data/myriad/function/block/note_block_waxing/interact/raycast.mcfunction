# Note block waxing raycast to find the note block

execute if block ^ ^ ^0.01 minecraft:note_block positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=myriad.waxed_note_block,distance=..0.5] run return run function myriad:block/note_block_waxing/add_wax
scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^0.01 run function myriad:block/note_block_waxing/interact/raycast