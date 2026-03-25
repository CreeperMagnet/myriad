# Gets entity interaction distance for macro

data remove storage myriad:temp root
execute store result score @s myriad.dummy run attribute @s minecraft:entity_interaction_range get
execute store result storage myriad:temp root.macro_input.distance int 1 run scoreboard players add @s myriad.dummy 2
function myriad:block/phantom_item_frame/rotate/distance_macro with storage myriad:temp root.macro_input