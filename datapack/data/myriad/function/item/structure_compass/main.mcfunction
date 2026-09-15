# Finds the slot the structure compass is in and calls the locate macro accordingly
data remove storage myriad:temp root

$data modify storage myriad:temp root.macro_input set value {id:"$(id)",dimension:"$(dimension)"}
$execute if predicate myriad:entity_properties/slots/weapon.mainhand/$(id) run data modify storage myriad:temp root.macro_input merge value {slot:"mainhand",slot_raw:"SelectedItem"}
$execute unless predicate myriad:entity_properties/slots/weapon.mainhand/$(id) run data modify storage myriad:temp root.macro_input merge value {slot:"offhand",slot_raw:"equipment.offhand"}

function myriad:item/structure_compass/locate with storage myriad:temp root.macro_input