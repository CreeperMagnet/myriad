# Rotates a block

data modify storage myriad:temp root.macro_input set value {"slot_0_occupied":"false","slot_1_occupied":"false","slot_2_occupied":"false","slot_3_occupied":"false","slot_4_occupied":"false","slot_5_occupied":"false"}
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_0_occupied=true] run data modify storage myriad:temp root.macro_input.slot_0_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_1_occupied=true] run data modify storage myriad:temp root.macro_input.slot_1_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_2_occupied=true] run data modify storage myriad:temp root.macro_input.slot_2_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_3_occupied=true] run data modify storage myriad:temp root.macro_input.slot_3_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_4_occupied=true] run data modify storage myriad:temp root.macro_input.slot_4_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_5_occupied=true] run data modify storage myriad:temp root.macro_input.slot_5_occupied set value "true"
function myriad:item/wrench/rotate/block/chiseled_bookshelf/form_macro with storage myriad:temp root.macro_input