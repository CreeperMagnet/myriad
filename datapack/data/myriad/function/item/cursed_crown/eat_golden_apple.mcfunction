# Commands to run when you've eaten a golden apple while wearing a cursed crown

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.operation set value "add"
execute if entity @s[advancements={myriad:technical/consume_item/golden_apple_with_cursed_crown={golden_apple=true}}] run data modify storage myriad:temp root.macro_input.value set value 6
execute if entity @s[advancements={myriad:technical/consume_item/golden_apple_with_cursed_crown={enchanted_golden_apple=true}}] run data modify storage myriad:temp root.macro_input.value set value 24
function myriad:item/cursed_crown/absorption/add_to_absorption with storage myriad:temp root.macro_input
tag @s add myriad.scheduled.cursed_crown_absorption_clear
schedule function myriad:item/cursed_crown/absorption/clear_absorption_scheduled 1t
advancement revoke @s only myriad:technical/consume_item/golden_apple_with_cursed_crown