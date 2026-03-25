# Commands to run when a player places a hopper

scoreboard players reset #temp_0 myriad.dummy
execute store result score #temp_0 myriad.dummy run attribute @s minecraft:block_interaction_range get 1.0
scoreboard players add #temp_0 myriad.dummy 2
data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.distance int 1 run scoreboard players get #temp_0 myriad.dummy
function myriad:block/hopper_updating/distance_macro with storage myriad:temp root.macro_input
advancement revoke @s only myriad:technical/placed_block/hopper
