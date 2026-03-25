# Processes a zombie

execute if predicate myriad:entity_properties/holding_mace_in_trial_chambers run data modify entity @s drop_chances.mainhand set value 0.1f
execute if entity @s[predicate=myriad:location_check/below_0,predicate=myriad:random_chance/0.1] if dimension minecraft:overworld unless entity @a[distance=..20] run function myriad:entity/zombie/make_glow_lichen_zombie
execute if entity @s[predicate=myriad:random_chance/0.00390625,predicate=myriad:entity_properties/slots/weapon.mainhand/air] run loot replace entity @s weapon.mainhand loot myriad:items/wrench

tag @s add myriad.modified_vanilla_entity