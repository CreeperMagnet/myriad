# Commands to check if a slot contains valid items

# If sherd material, don't export
execute if items block ~ ~ ~ container.12 #myriad:pot_materials run return 0
# If raw vanilla pot, don't export
execute if items block ~ ~ ~ container.12 minecraft:decorated_pot[minecraft:pot_decorations=["minecraft:brick","minecraft:brick","minecraft:brick","minecraft:brick"]] run return 0
# If raw custom pot, don't export
execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{myriad:{id:"decorated_pot",raw_pot:1b}}] run return 0

# Export if all others fail
data modify storage myriad:temp root.export_items set value [{}]
data modify storage myriad:temp root.export_items[0] set from block ~ ~ ~ Items[{Slot:12b}]
data remove block ~ ~ ~ Items[{Slot:12b}]
function myriad:block/pottery_table/crafting/manage_invalids/spawn_loop