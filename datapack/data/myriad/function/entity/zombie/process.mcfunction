# Processes a zombie

execute if predicate myriad:entity_properties/holding_mace_in_trial_chambers run data modify entity @s drop_chances.mainhand set value 0.1f
execute if entity @s[predicate=myriad:random_chance/0.00390625,predicate=myriad:entity_properties/slots/weapon.mainhand/air] run loot replace entity @s weapon.mainhand loot myriad:items/wrench

tag @s add myriad.modified_vanilla_entity