# Commands to edit an existing custom potion in the brewing stand

$item modify block ~ ~ ~ container.$(slot) {"function":"minecraft:set_custom_data","tag":"{myriad:{potion:{can_extend:0b,can_amplify:0b}}}"}
$execute if data storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion{id:"myriad:fortitude"} run item modify block ~ ~ ~ container.$(slot) myriad:set_potion_data/extend/fortitude
$execute if data storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion{id:"myriad:blind_rage"} run item modify block ~ ~ ~ container.$(slot) myriad:set_potion_data/extend/blind_rage