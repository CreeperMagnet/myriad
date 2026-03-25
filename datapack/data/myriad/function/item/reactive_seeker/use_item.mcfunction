# Makes the reactive seeker function

data remove storage myriad:temp root
execute if predicate myriad:entity_properties/slots/weapon.mainhand/reactive_seeker run data modify storage myriad:temp root.macro_input set value {slot:"weapon.mainhand",slot_short:"mainhand",slot_raw:"SelectedItem"}
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/reactive_seeker run data modify storage myriad:temp root.macro_input set value {slot:"weapon.offhand",slot_short:"offhand",slot_raw:"equipment.offhand"}
function myriad:item/reactive_seeker/main_macro with storage myriad:temp root.macro_input

playsound myriad:item.reactive_seeker.use player @a[distance=..16]
advancement grant @s only myriad:minecraft/nether/reactive_seeker