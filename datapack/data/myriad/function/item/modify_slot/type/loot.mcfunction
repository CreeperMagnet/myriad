# Replaces an item with a loot table

function myriad:item/modify_slot/get

$data modify storage myriad:temp root.macro_input.path set value '$(path)'
function myriad:item/modify_slot/modify/loot with storage myriad:temp root.macro_input
