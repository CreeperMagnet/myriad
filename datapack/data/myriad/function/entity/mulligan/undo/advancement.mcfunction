# Runs when a player renames Mulligan to something that isn't his name

scoreboard players reset #temp_0 myriad.dummy
execute store result score #temp_0 myriad.dummy run attribute @s minecraft:entity_interaction_range get 1.0
data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.distance int 1 run scoreboard players add #temp_0 myriad.dummy 2
function myriad:entity/mulligan/undo/distance_macro with storage myriad:temp root.macro_input

advancement revoke @s only myriad:technical/player_interacted_with_entity/name_mulligan_something_else