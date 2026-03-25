# Makes diluted potions function

data remove storage myriad:temp root
execute if entity @s[predicate=myriad:entity_properties/slots/weapon.mainhand/diluted_potion] run return run function myriad:item/diluted_potion/main_macro {"slot":"weapon.mainhand","slot_raw":"SelectedItem"}
function myriad:item/diluted_potion/main_macro {"slot":"weapon.offhand","slot_raw":"equipment.offhand"}