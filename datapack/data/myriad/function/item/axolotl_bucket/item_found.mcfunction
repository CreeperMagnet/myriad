# Buckets an axolotl

execute if data storage myriad:temp root.item.components."minecraft:item_model" run return 0

function myriad:item/axolotl_bucket/set_data

data modify storage myriad:temp root.macro_input.compound set from storage myriad:temp root.item.components
function myriad:item/modify_slot/type/modify
