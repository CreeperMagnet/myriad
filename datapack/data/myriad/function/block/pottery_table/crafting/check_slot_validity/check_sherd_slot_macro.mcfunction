# Checks if a sherd is valid, and if it is not, exports it.

# If item is sherd, don't export
$execute if items block ~ ~ ~ container.$(slot) #minecraft:decorated_pot_sherds run return 0
# If item is custom sherd, don't export
$execute if items block ~ ~ ~ container.$(slot) *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0

# Export if the sherd isn't valid
data modify storage myriad:temp root.export_items set value [{}]
$data modify storage myriad:temp root.export_items[0] set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$data remove block ~ ~ ~ Items[{Slot:$(slot)b}]
function myriad:block/pottery_table/crafting/manage_invalids/spawn_loop