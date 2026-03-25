# Fills the dropper with items based on the comparator score

scoreboard players reset @s myriad.soul_seer_cooldown
execute store result score @s myriad.dummy run data get entity @s item.components."minecraft:custom_data".comparator
execute if score @s myriad.dummy matches ..0 run return 0
execute if score @s myriad.dummy matches 16.. run data modify entity @s item.components."minecraft:custom_data".comparator set value 15
data remove storage myriad:temp root
data modify storage myriad:temp root.macro_input.value set from entity @s item.components."minecraft:custom_data".comparator
function myriad:block/soul_seer/glow/comparator_macro with storage myriad:temp root.macro_input