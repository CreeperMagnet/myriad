# Refreshes the player's compendium(s)

execute if entity @s[gamemode=spectator] run return 0

execute if entity @s[tag=!myriad.compendium_ban,tag=myriad.unlockable_compendium] run function myriad:item/compendium/find_item/from/reset_item {id:"unlockable_compendium"}
execute if entity @s[tag=!myriad.compendium_ban,tag=myriad.unlockable_compendium] run function myriad:item/compendium/update_unlocks/main
execute if entity @s[tag=!myriad.compendium_ban,tag=!myriad.unlockable_compendium] run function myriad:item/compendium/find_item/from/reset_item {id:"compendium"}
