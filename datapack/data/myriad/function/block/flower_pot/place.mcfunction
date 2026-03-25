# Summons an entity for nether brick flower pot

data remove storage myriad:temp root.macro_input
execute if predicate myriad:entity_properties/slots/weapon.mainhand/custom_flower_pot run data modify storage myriad:temp root.macro_input.type set from entity @s SelectedItem.components."minecraft:custom_data".myriad.type
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/custom_flower_pot run data modify storage myriad:temp root.macro_input.type set from entity @s equipment.offhand.components."minecraft:custom_data".myriad.type

execute unless predicate myriad:entity_properties/slots/weapon.mainhand/custom_flower_pot run function myriad:technical/macros/reduce_count_and_swing {slot:"offhand"}
execute if predicate myriad:entity_properties/slots/weapon.mainhand/custom_flower_pot run function myriad:technical/macros/reduce_count_and_swing {slot:"mainhand"}

function myriad:block/flower_pot/summon_macro with storage myriad:temp root.macro_input
setblock ~ ~ ~ minecraft:flower_pot destroy
scoreboard players reset @s myriad.dummy
playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 1 0.8