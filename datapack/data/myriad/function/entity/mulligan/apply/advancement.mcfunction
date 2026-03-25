# Creates the lil man

scoreboard players reset #temp_0 myriad.dummy
execute store result score #temp_0 myriad.dummy run attribute @s minecraft:entity_interaction_range get 1.0
data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.distance int 1 run scoreboard players add #temp_0 myriad.dummy 2
function myriad:entity/mulligan/apply/distance_macro with storage myriad:temp root.macro_input

advancement revoke @s only myriad:technical/multiple_trigger_types/all_hail_his_majesty