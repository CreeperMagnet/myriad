# Decorates a non-vanilla pot

data modify storage myriad:temp root.macro_input.type set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".myriad.type

data modify storage myriad:temp root.macro_input.default_item_id set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".myriad.sherds[0].id
data modify storage myriad:temp root.macro_input.default_item_id set string storage myriad:temp root.macro_input.default_item_id 10

function myriad:block/pottery_table/crafting/create_output/decorate_pot/custom/main_macro with storage myriad:temp root.macro_input