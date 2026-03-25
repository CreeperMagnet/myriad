# Duplicates a sherd based on several factors

# If not all of the slots are filled, stop
execute unless items block ~ ~ ~ container.3 * run return 0
execute unless items block ~ ~ ~ container.11 * run return 0
execute unless items block ~ ~ ~ container.12 * run return 0
execute unless items block ~ ~ ~ container.13 * run return 0
execute unless items block ~ ~ ~ container.21 * run return 0

# Check that all the sherds are the same
data modify storage myriad:temp root.all_same_checker set from block ~ ~ ~ Items
data remove storage myriad:temp root.all_same_checker[].count
data remove storage myriad:temp root.all_same_checker[].components."minecraft:custom_name"
data remove storage myriad:temp root.all_same_checker[].Slot
scoreboard players set @s myriad.dummy 0
execute store success score @s myriad.dummy run data modify storage myriad:temp root.all_same_checker[0] set from storage myriad:temp root.all_same_checker[1]
execute if score @s myriad.dummy matches 1.. run return 0
execute store success score @s myriad.dummy run data modify storage myriad:temp root.all_same_checker[0] set from storage myriad:temp root.all_same_checker[3]
execute if score @s myriad.dummy matches 1.. run return 0
execute store success score @s myriad.dummy run data modify storage myriad:temp root.all_same_checker[0] set from storage myriad:temp root.all_same_checker[4]
execute if score @s myriad.dummy matches 1.. run return 0

# Check middle item for proper type
execute if items block ~ ~ ~ container.12 minecraft:nether_brick unless items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"nether_brick"}}] run return 0
execute if items block ~ ~ ~ container.12 minecraft:prismarine_shard unless items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"prismarine"}}] run return 0
execute if items block ~ ~ ~ container.12 minecraft:resin_brick unless items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"pottery_sherd",type:"resin_brick"}}] run return 0
execute if items block ~ ~ ~ container.12 minecraft:brick if items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"pottery_sherd"}}] run return 0

# Edit output item if everything checks out
item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.3
data modify block ~ ~ ~ Items[{Slot:15b}].count set value 1
data remove block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_name"

tag @s add myriad.pottery_table.assembled_output