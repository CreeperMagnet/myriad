# Chooses the hand to throw from

execute if predicate myriad:entity_properties/slots/weapon.mainhand/boomerang run return run function myriad:item/boomerang/throw/macro {"slot":"weapon.mainhand","slot_short":"mainhand","slot_raw":"SelectedItem","boomerang_slot_data":"from entity @s SelectedItemSlot"}
function myriad:item/boomerang/throw/macro {"slot":"weapon.offhand","slot_short":"offhand","slot_raw":"equipment.offhand","boomerang_slot_data":'value "weapon.offhand"'}