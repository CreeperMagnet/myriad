# Decorates a normal pot

execute if items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0
execute if items block ~ ~ ~ container.11 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0
execute if items block ~ ~ ~ container.13 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0
execute if items block ~ ~ ~ container.21 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
data modify block ~ ~ ~ Items[{Slot:15b}].count set value 1
data modify storage myriad:temp root.item set from block ~ ~ ~ Items[{Slot:15b}]
execute unless data storage myriad:temp root.item.components."minecraft:pot_decorations" run data modify storage myriad:temp root.item.components."minecraft:pot_decorations" set value ["minecraft:brick","minecraft:brick","minecraft:brick","minecraft:brick"]
execute if items block ~ ~ ~ container.3 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations"[2] set from block ~ ~ ~ Items[{Slot:3b}].id
execute if items block ~ ~ ~ container.11 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations"[0] set from block ~ ~ ~ Items[{Slot:11b}].id
execute if items block ~ ~ ~ container.13 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations"[3] set from block ~ ~ ~ Items[{Slot:13b}].id
execute if items block ~ ~ ~ container.21 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations"[1] set from block ~ ~ ~ Items[{Slot:21b}].id
execute if items block ~ ~ ~ container.3 * if items block ~ ~ ~ container.11 * if items block ~ ~ ~ container.13 * if items block ~ ~ ~ container.21 * run data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.trigger_advancement set value 1b

data modify block ~ ~ ~ Items[{Slot:15b}] set from storage myriad:temp root.item
tag @s add myriad.pottery_table.assembled_output