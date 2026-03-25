# Makes the smoldering seeker function

data remove storage myriad:temp root
execute if predicate myriad:entity_properties/slots/weapon.mainhand/smoldering_seeker run data modify storage myriad:temp root.macro_input set value {slot:"weapon.mainhand",slot_short:"mainhand",slot_raw:"SelectedItem"}
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/smoldering_seeker run data modify storage myriad:temp root.macro_input set value {slot:"weapon.offhand",slot_short:"offhand",slot_raw:"equipment.offhand"}
function myriad:item/smoldering_seeker/main_macro with storage myriad:temp root.macro_input

# Random effects
playsound myriad:item.smoldering_seeker.use player @a[distance=..16]
advancement grant @s only myriad:minecraft/nether/smoldering_seeker

