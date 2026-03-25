# Takes experience from the locket

# Stop if locket is empty
execute if score #temp_0 myriad.dummy matches 0 run return 0

# Two different xp orb spawning cases
execute if score #temp_0 myriad.dummy matches ..30 run function myriad:item/locket_of_learning/withdraw/macro with storage myriad:temp root.item.components."minecraft:custom_data".myriad
execute if score #temp_0 myriad.dummy matches 31.. run function myriad:item/locket_of_learning/withdraw/default

# Modifying item macro
function myriad:item/locket_of_learning/modify_item with storage myriad:temp root.item