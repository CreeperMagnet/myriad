# Chooses which type of pot is used

# Differing code between vanilla & custom pots
execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{myriad:{id:"decorated_pot"}}] run function myriad:block/pottery_table/crafting/create_output/decorate_pot/custom/main
execute unless items block ~ ~ ~ container.12 *[minecraft:custom_data~{myriad:{id:"decorated_pot"}}] run function myriad:block/pottery_table/crafting/create_output/decorate_pot/vanilla

# Only continue if the above code succeeded
execute unless items block ~ ~ ~ container.15 * run return fail

# Common code
execute if items block ~ ~ ~ container.3 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations".right set from block ~ ~ ~ Items[{Slot:3b}]
execute if items block ~ ~ ~ container.11 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations".back set from block ~ ~ ~ Items[{Slot:11b}]
execute if items block ~ ~ ~ container.13 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations".front set from block ~ ~ ~ Items[{Slot:13b}]
execute if items block ~ ~ ~ container.21 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations".left set from block ~ ~ ~ Items[{Slot:21b}]
execute if items block ~ ~ ~ container.3 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations".right.count set value 1
execute if items block ~ ~ ~ container.11 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations".back.count set value 1
execute if items block ~ ~ ~ container.13 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations".front.count set value 1
execute if items block ~ ~ ~ container.21 * run data modify storage myriad:temp root.item.components."minecraft:pot_decorations".left.count set value 1

data modify block ~ ~ ~ Items[{Slot:15b}] set from storage myriad:temp root.item
tag @s add myriad.pottery_table.assembled_output