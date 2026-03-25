# Replaces an item with another one

function myriad:item/modify_slot/get

$data modify storage myriad:temp root.macro_input.id set value "$(id)"
$data modify storage myriad:temp root.macro_input.components set value $(components)

function myriad:item/modify_slot/modify/replace with storage myriad:temp root.macro_input
