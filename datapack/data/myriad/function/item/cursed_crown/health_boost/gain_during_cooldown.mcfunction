# Only runs when you get health boost during cursed crown cooldown

data remove storage myriad:temp root.macro_input
# The myriad.dummy value is provided by the parent function
execute store result storage myriad:temp root.macro_input.value int 1 run scoreboard players remove @s myriad.dummy 2
data modify storage myriad:temp root.macro_input.operation set value "add"
function myriad:item/cursed_crown/absorption/add_to_absorption with storage myriad:temp root.macro_input
