# Runs when the brush is held

tag @s add myriad.painting_with_brush
scoreboard players add @s myriad.paintbrush_timer 1
scoreboard players operation @s[scores={myriad.paintbrush_timer=1..}] myriad.paintbrush_timer %= #16 myriad.dummy
execute if score @s myriad.paintbrush_timer matches 0 run function myriad:item/paintbrush/start_raycast

advancement revoke @s only myriad:technical/using_item/brush_with_dye