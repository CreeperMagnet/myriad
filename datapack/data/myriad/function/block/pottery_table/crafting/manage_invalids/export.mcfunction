# Exports invalid items

data modify storage myriad:temp root.Items set value []

data modify storage myriad:temp root.Items append from block ~ ~ ~ Items[{Slot:3b}]
data modify storage myriad:temp root.Items append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage myriad:temp root.Items append from block ~ ~ ~ Items[{Slot:12b}]
data modify storage myriad:temp root.Items append from block ~ ~ ~ Items[{Slot:13b}]
data modify storage myriad:temp root.Items append from block ~ ~ ~ Items[{Slot:21b}]
execute if entity @s[tag=myriad.pottery_table.assembled_output] run data modify storage myriad:temp root.Items append from block ~ ~ ~ Items[{Slot:15b}]

data remove block ~ ~ ~ Items[{Slot:3b}]
data remove block ~ ~ ~ Items[{Slot:11b}]
data remove block ~ ~ ~ Items[{Slot:12b}]
data remove block ~ ~ ~ Items[{Slot:13b}]
data remove block ~ ~ ~ Items[{Slot:21b}]
execute if entity @s[tag=myriad.pottery_table.assembled_output] run data remove block ~ ~ ~ Items[{Slot:15b}]

data modify storage myriad:temp root.export_items set from block ~ ~ ~ Items

# Spawns the items on the nearest player that opened the table's gui
execute if data storage myriad:temp root.export_items[{}] run function myriad:block/pottery_table/crafting/manage_invalids/spawn_loop
data modify block ~ ~ ~ Items set from storage myriad:temp root.Items
