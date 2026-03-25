# Commands to run while you are holding the recovery compass

data remove storage myriad:temp root
data modify storage myriad:temp root.macro_input.UUID set from entity @s UUID
execute store result storage myriad:temp root.macro_input.score int 1 run scoreboard players get @s myriad.deaths
function myriad:item/recovery_compass/edit_items_macro with storage myriad:temp root.macro_input
