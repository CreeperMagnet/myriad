# Triggers when the player waxes a note block (clicks with honeycomb)

execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute if items entity @s weapon.mainhand minecraft:honeycomb anchored eyes run function myriad:block/note_block_waxing/interact/raycast

execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 1
data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.distance int 1 run scoreboard players add @s myriad.dummy 2
function myriad:block/note_block_waxing/distance_macro with storage myriad:temp root.macro_input
advancement revoke @s only myriad:technical/default_block_use/waxed_note_block
