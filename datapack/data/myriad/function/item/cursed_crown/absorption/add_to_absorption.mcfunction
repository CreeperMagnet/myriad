# Sets your absorption health based on the given amount of max health you have

# Get absorption amount
execute store result score #temp_0 myriad.dummy run data get entity @s AbsorptionAmount
attribute @s minecraft:max_health modifier remove myriad:cursed_crown
attribute @s minecraft:max_absorption modifier remove myriad:cursed_crown
data remove storage myriad:temp root.macro_input
execute store result score @s myriad.dummy run attribute @s minecraft:max_health get
execute store result storage myriad:temp root.macro_input.max_health float 1 run scoreboard players remove @s myriad.dummy 2

$scoreboard players $(operation) #temp_0 myriad.dummy $(value)
execute if score #temp_0 myriad.dummy < #0 myriad.dummy run scoreboard players set #temp_0 myriad.dummy 0
execute if score #temp_0 myriad.dummy >= @s myriad.dummy run scoreboard players set @s myriad.cursed_crown_cooldown 0
execute if score #temp_0 myriad.dummy > @s myriad.dummy run scoreboard players operation #temp_0 myriad.dummy = @s myriad.dummy
execute store result storage myriad:temp root.macro_input.max_absorption float 1 run scoreboard players get #temp_0 myriad.dummy

function myriad:item/cursed_crown/absorption/set_attributes_macro with storage myriad:temp root.macro_input

