# Commands to run when interacting with an echoing hourglass

data remove storage myriad:temp root

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:entity_interaction_range get 1
execute store result storage myriad:temp root.macro_input.distance int 1 run scoreboard players add @s myriad.dummy 2
data modify storage myriad:temp root.item set from entity @s SelectedItem
execute if entity @s[gamemode=creative] run data modify storage myriad:temp root.creative set value 1b

function myriad:block/echoing_hourglass/interact/distance_macro with storage myriad:temp root.macro_input

advancement revoke @s only myriad:technical/player_interacted_with_entity/echoing_hourglass