# Shift-clicking code for pottery table

# Recreate the output
function myriad:block/pottery_table/crafting/create_output/duplicate_sherd
data modify block ~ ~ ~ Items[{Slot:12b}].id set from block ~ ~ ~ Items[{Slot:15b}].id
data modify block ~ ~ ~ Items[{Slot:12b}].components set from block ~ ~ ~ Items[{Slot:15b}].components
data remove block ~ ~ ~ Items[{Slot:15b}]


data modify storage myriad:temp root.export_items append from block ~ ~ ~ Items[{Slot:12b}]
data remove block ~ ~ ~ Items[{Slot:12b}]
function myriad:block/pottery_table/crafting/manage_invalids/spawn_loop