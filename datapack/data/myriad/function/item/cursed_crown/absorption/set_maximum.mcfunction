# Sets your absorption health based on the given amount of max health you have

attribute @s minecraft:max_health modifier remove myriad:cursed_crown
attribute @s minecraft:max_absorption modifier remove myriad:cursed_crown
data remove storage myriad:temp root.macro_input
execute store result score @s myriad.dummy run attribute @s minecraft:max_health get
execute store result storage myriad:temp root.macro_input.max_health float 1 run scoreboard players remove @s myriad.dummy 2
execute store result storage myriad:temp root.macro_input.max_absorption float 1 run scoreboard players get @s myriad.dummy
function myriad:item/cursed_crown/absorption/set_attributes_macro with storage myriad:temp root.macro_input