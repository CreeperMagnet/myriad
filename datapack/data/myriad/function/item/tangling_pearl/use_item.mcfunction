# Runs when right-clicking a tangling pearl

data remove storage myriad:temp root.item
execute if predicate myriad:entity_properties/slots/weapon.mainhand/tangling_pearl run data modify storage myriad:temp root.item set from entity @s SelectedItem
execute if predicate myriad:entity_properties/slots/weapon.mainhand/tangling_pearl run data modify storage myriad:temp root.item.slot set value "weapon.mainhand"
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/tangling_pearl run data modify storage myriad:temp root.item set from entity @s equipment.offhand
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/tangling_pearl run data modify storage myriad:temp root.item.slot set value "weapon.offhand"

function myriad:item/tangling_pearl/toggle/main

function myriad:technical/macros/loot/replace with storage myriad:temp root.item
