# Removes all filler comparator items and summons all other items as entities

data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{myriad:{clear:1b}}}}]
data remove storage myriad:temp root.macro_input
function myriad:block/soul_seer/remove_items/loop