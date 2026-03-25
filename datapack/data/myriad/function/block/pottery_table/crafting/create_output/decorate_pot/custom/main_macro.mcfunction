# Decorates a non-vanilla pot

$execute if items block ~ ~ ~ container.3 * unless items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"$(type)"}}] run return 0
$execute if items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.11 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"$(type)"}}] run return 0
$execute if items block ~ ~ ~ container.13 * unless items block ~ ~ ~ container.13 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"$(type)"}}] run return 0
$execute if items block ~ ~ ~ container.21 * unless items block ~ ~ ~ container.21 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"$(type)"}}] run return 0


item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
data modify block ~ ~ ~ Items[{Slot:15b}].count set value 1
data modify storage myriad:temp root.item set from block ~ ~ ~ Items[{Slot:15b}]
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.raw_pot set value 0b

$data modify storage myriad:temp root.item.components."minecraft:lore" prepend value {"translate":"item.minecraft.$(default_item_id)","color":"gray","italic":false}
$data modify storage myriad:temp root.item.components."minecraft:lore" prepend value {"translate":"item.minecraft.$(default_item_id)","color":"gray","italic":false}
$data modify storage myriad:temp root.item.components."minecraft:lore" prepend value {"translate":"item.minecraft.$(default_item_id)","color":"gray","italic":false}
$data modify storage myriad:temp root.item.components."minecraft:lore" prepend value {"translate":"item.minecraft.$(default_item_id)","color":"gray","italic":false}

$execute if items block ~ ~ ~ container.13 * run function myriad:block/pottery_table/crafting/create_output/decorate_pot/custom/sherd_data_macro {"type":"$(type)","slot":"13","index":"0"}
$execute if items block ~ ~ ~ container.21 * run function myriad:block/pottery_table/crafting/create_output/decorate_pot/custom/sherd_data_macro {"type":"$(type)","slot":"21","index":"1"}
$execute if items block ~ ~ ~ container.3 * run function myriad:block/pottery_table/crafting/create_output/decorate_pot/custom/sherd_data_macro {"type":"$(type)","slot":"3","index":"2"}
$execute if items block ~ ~ ~ container.11 * run function myriad:block/pottery_table/crafting/create_output/decorate_pot/custom/sherd_data_macro {"type":"$(type)","slot":"11","index":"3"}
execute if items block ~ ~ ~ container.3 * if items block ~ ~ ~ container.11 * if items block ~ ~ ~ container.13 * if items block ~ ~ ~ container.21 * run data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.trigger_advancement set value 1b

data modify storage myriad:temp root.item.components."minecraft:lore" prepend value ""

data modify block ~ ~ ~ Items[{Slot:15b}] set from storage myriad:temp root.item
tag @s add myriad.pottery_table.assembled_output