# Copies the modified NBT to a compendium

# Tag so advancements won't trigger while modifying the item
tag @s add myriad.modifying_item

data modify storage myriad:temp root.macro_input.compound set from storage myriad:temp root.item.components
function myriad:item/modify_slot/type/modify

tag @s remove myriad.modifying_item
