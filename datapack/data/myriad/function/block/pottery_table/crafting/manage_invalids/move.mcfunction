# Moves items if they are put into invalid slots

# Try to move the item in slot 0 elsewhere

# If it's a pot material, try to move it to the center
execute if items block ~ ~ ~ container.0 #myriad:pot_materials unless items block ~ ~ ~ container.12 * run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b

# If it's a sherd, try to move it to the sherd slots, in proper order
execute if items block ~ ~ ~ container.0 *[minecraft:provides_pottery_pattern] run function myriad:block/pottery_table/crafting/manage_invalids/move_sherds
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run function myriad:block/pottery_table/crafting/manage_invalids/move_sherds

# If it's a decorated pot, try to move it to the center
execute if items block ~ ~ ~ container.0 minecraft:decorated_pot[minecraft:pot_decorations={back:{id:"minecraft:brick"},front:{id:"minecraft:brick"},left:{id:"minecraft:brick"},right:{id:"minecraft:brick"}}] unless items block ~ ~ ~ container.12 * run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{myriad:{id:"decorated_pot",raw_pot:1b}}] unless items block ~ ~ ~ container.12 * run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b

# If things are still invalid, just throw them out instead
execute if items block ~ ~ ~ myriad:pottery_table_invalid_slots * run function myriad:block/pottery_table/crafting/manage_invalids/export