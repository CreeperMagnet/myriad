# Commands for unequipping a cursed crown

execute if entity @s[predicate=!myriad:entity_properties/slots/armor.head/cursed_crown] run function myriad:item/cursed_crown/unequip/remove_data
advancement revoke @s only myriad:technical/inventory_changed/cursed_crown/unequip