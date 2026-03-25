# Runs when the saplink is right-clicked

data remove storage myriad:temp root
execute if predicate myriad:entity_properties/slots/weapon.mainhand/saplink run data modify storage myriad:temp root.item set from entity @s SelectedItem
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/saplink run data modify storage myriad:temp root.item set from entity @s equipment.offhand

data modify storage myriad:temp root.macro_input.id set from storage myriad:temp root.item.components."minecraft:custom_data".myriad.saplink_id
data modify storage myriad:temp root.macro_input.wood_type set from storage myriad:temp root.item.components."minecraft:custom_model_data".strings[0]

# Trim off the "minecraft:" namespace from the wood type
data modify storage myriad:temp root.macro_input.wood_type set string storage myriad:temp root.macro_input.wood_type 10

function myriad:item/saplink/power_connector_macro with storage myriad:temp root.macro_input
execute if data storage myriad:temp root.success_cooldown if predicate myriad:entity_properties/slots/weapon.mainhand/saplink run swing
execute if data storage myriad:temp root.success_cooldown unless predicate myriad:entity_properties/slots/weapon.mainhand/saplink run swing @s offhand
execute if data storage myriad:temp root.success_cooldown anchored eyes run return run function myriad:item/saplink/success_vfx
execute unless data storage myriad:temp root.success anchored eyes run return run function myriad:item/saplink/failure_vfx