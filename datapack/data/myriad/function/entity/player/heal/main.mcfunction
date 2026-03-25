# Heals the player based on a score provided

execute store result score @s myriad.dummy run attribute @s minecraft:max_health get 10
execute store result score @s myriad.dummy2 run data get entity @s Health 10
scoreboard players operation @s myriad.dummy -= @s myriad.dummy2
$scoreboard players remove @s myriad.dummy $(amount)

data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.amount float 0.1 run scoreboard players get @s myriad.dummy
function myriad:entity/player/heal/apply_attribute_macro with storage myriad:temp root.macro_input

effect give @s minecraft:instant_health 1 24 true

tag @s add myriad.scheduled.remove_attributes
schedule function myriad:entity/player/heal/remove_attributes/scheduled 2t replace