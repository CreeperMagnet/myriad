# Decorates a normal pot

execute if items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0
execute if items block ~ ~ ~ container.11 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0
execute if items block ~ ~ ~ container.13 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0
execute if items block ~ ~ ~ container.21 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
item modify block ~ ~ ~ container.15 {type:"set_count",count:1}
data modify storage myriad:temp root.item set from block ~ ~ ~ Items[{Slot:15b}]
execute unless data storage myriad:temp root.item.components."minecraft:pot_decorations" run data modify storage myriad:temp root.item.components."minecraft:pot_decorations" set value {front:{id:"minecraft:brick"},back:{id:"minecraft:brick"},left:{id:"minecraft:brick"},right:{id:"minecraft:brick"}}