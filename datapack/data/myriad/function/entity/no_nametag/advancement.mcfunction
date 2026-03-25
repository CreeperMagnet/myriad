# Functions to run when a player names an entity that isn't supposed to display a nametag

scoreboard players reset #temp_0 myriad.dummy
execute store result score #temp_0 myriad.dummy run attribute @s minecraft:entity_interaction_range get 1.0
data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.distance int 1 run scoreboard players add #temp_0 myriad.dummy 2
function myriad:entity/no_nametag/distance_macro with storage myriad:temp root.macro_input

advancement revoke @s only myriad:technical/player_interacted_with_entity/name_no_nametag_entity