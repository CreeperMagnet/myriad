# Only runs when you lose health boost during cursed crown cooldown

data remove storage myriad:temp root.macro_input
execute store result score #temp_0 myriad.dummy run attribute @s minecraft:max_health base get
scoreboard players remove #temp_0 myriad.dummy 2
execute store result score #temp_1 myriad.dummy run attribute @s minecraft:max_health modifier value get myriad:cursed_crown

execute store result storage myriad:temp root.macro_input.value int -1 run scoreboard players operation #temp_0 myriad.dummy += #temp_1 myriad.dummy
data modify storage myriad:temp root.macro_input.operation set value "remove"

function myriad:item/cursed_crown/absorption/add_to_absorption with storage myriad:temp root.macro_input
