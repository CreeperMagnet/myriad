# Removes all filler comparator items and summons all other items as entities

execute unless data block ~ ~ ~ Items[0] run return 0
data modify storage myriad:temp root.macro_input.item set from block ~ ~ ~ Items[0]
execute positioned ~ ~1 ~ run function myriad:technical/macros/spawn_item with storage myriad:temp root.macro_input
data remove block ~ ~ ~ Items[0]

function myriad:block/soul_seer/remove_items/loop