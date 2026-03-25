# Modifies a vanilla drowned

tag @s add myriad.modified_vanilla_entity
execute if entity @s[predicate=myriad:entity_properties/slots/weapon.mainhand/air,predicate=myriad:random_chance/0.05] run return run function myriad:entity/drowned/give_swordfish
execute if entity @s[predicate=myriad:entity_properties/slots/air_in_hands_and_head] run function myriad:entity/drowned/coral/main
