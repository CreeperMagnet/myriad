# Decorates a non-vanilla pot

$execute if items block ~ ~ ~ container.3 * unless items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"$(type)"}}] run return 0
$execute if items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.11 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"$(type)"}}] run return 0
$execute if items block ~ ~ ~ container.13 * unless items block ~ ~ ~ container.13 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"$(type)"}}] run return 0
$execute if items block ~ ~ ~ container.21 * unless items block ~ ~ ~ container.21 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"$(type)"}}] run return 0

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
item modify block ~ ~ ~ container.15 {type:"set_count",count:1}
data modify storage myriad:temp root.item set from block ~ ~ ~ Items[{Slot:15b}]
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.raw_pot set value 0b

# Set up the custom model data properly
data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[0] set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".myriad.sherd
data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[1] set from block ~ ~ ~ Items[{Slot:21b}].components."minecraft:custom_data".myriad.sherd
data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[2] set from block ~ ~ ~ Items[{Slot:3b}].components."minecraft:custom_data".myriad.sherd
data modify storage myriad:temp root.item.components."minecraft:custom_model_data".strings[3] set from block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".myriad.sherd