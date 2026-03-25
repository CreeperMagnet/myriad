# Tags the player if they've entered a pottery table

tag @s add myriad.inside_pottery_table_gui
stopsound @a[distance=..16] block block.barrel.open

# Fix the edge case bug if the barrel was stuck in the closed state
scoreboard players reset #temp_0 myriad.dummy
execute store result score #temp_0 myriad.dummy run attribute @s minecraft:block_interaction_range get 1.0
data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.distance int 1 run scoreboard players add #temp_0 myriad.dummy 2
# Use reach+2 as distance
function myriad:block/pottery_table/enter_gui/distance_macro with storage myriad:temp root.macro_input

advancement revoke @s only myriad:technical/default_block_use/open_pottery_table