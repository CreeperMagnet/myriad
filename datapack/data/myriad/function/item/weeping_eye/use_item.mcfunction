# Makes the weeping eye function

data remove storage myriad:temp root
execute if predicate myriad:entity_properties/slots/weapon.mainhand/weeping_eye run data modify storage myriad:temp root.macro_input set value {slot:"weapon.mainhand",slot_short:"mainhand",slot_raw:"SelectedItem"}
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/weeping_eye run data modify storage myriad:temp root.macro_input set value {slot:"weapon.offhand",slot_short:"offhand",slot_raw:"equipment.offhand"}
function myriad:item/weeping_eye/main_macro with storage myriad:temp root.macro_input

# Random effects
playsound myriad:item.weeping_eye.use player @a[distance=..16]