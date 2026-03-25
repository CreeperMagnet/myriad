# Updates an unlocked compendium

advancement revoke @s[tag=myriad.modifying_item] only myriad:technical/inventory_changed/compendium/unlocked
# If this was called due to a modified item in this code, return
execute if entity @s[tag=myriad.modifying_item] run return 0

function myriad:item/compendium/find_item/from/reset_item {id:"compendium"}
execute if entity @s[tag=myriad.unlockable_compendium] run function myriad:item/compendium/update_unlocks/main

# Revoke the advancement that called this function
advancement revoke @s only myriad:technical/inventory_changed/compendium/unlocked
