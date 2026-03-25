# Commands that run when you drink a sprouting serum
advancement revoke @s only myriad:technical/consume_item/serum_of_sprouting


data remove storage myriad:temp root


# Add 0.167 to scale
execute store result score @s myriad.dummy run attribute @s minecraft:scale modifier value get myriad:scale_serum 1000
advancement grant @s[scores={myriad.dummy=334..}] only myriad:minecraft/husbandry/maximum_scale

# Fail if you're adding >50% scale (player cannot exceed 1.5x scale)
execute if score @s myriad.dummy matches 500.. run return 0
execute store result storage myriad:temp root.macro_input.scale double 0.001 run scoreboard players add @s myriad.dummy 167
execute if score @s myriad.dummy matches 0 run return run function myriad:item/scale_serum/reset_attributes

# Add 0.02 to jump strength
execute store result score @s myriad.dummy run attribute @s minecraft:jump_strength modifier value get myriad:scale_serum 100
execute store result storage myriad:temp root.macro_input.jump_strength double 0.01 run scoreboard players add @s myriad.dummy 2

# Add 0.3 blocks to entity interaction range
execute store result score @s myriad.dummy run attribute @s minecraft:entity_interaction_range modifier value get myriad:scale_serum 10
execute store result storage myriad:temp root.macro_input.entity_interaction_range double 0.1 run scoreboard players add @s myriad.dummy 3

# Add 0.5 blocks to block interaction range
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range modifier value get myriad:scale_serum 10
execute store result storage myriad:temp root.macro_input.block_interaction_range double 0.1 run scoreboard players add @s myriad.dummy 5

# Add 0.5 blocks to safe fall distance
execute store result score @s myriad.dummy run attribute @s minecraft:safe_fall_distance modifier value get myriad:scale_serum 10
execute store result storage myriad:temp root.macro_input.safe_fall_distance double 0.1 run scoreboard players add @s myriad.dummy 5

# Use the values calculated to set attributes
function myriad:item/scale_serum/attributes_macro with storage myriad:temp root.macro_input