# Resets this player's unlockable compendium data & items

# Important for multiplayer compat
data modify storage myriad:temp root.manage_data.uuid set from entity @s UUID

data modify storage myriad:temp root.compendium set value {}
function myriad:item/compendium/data/reset_all
function myriad:item/compendium/find_item/from/reset_item {id:"unlockable_compendium"}
