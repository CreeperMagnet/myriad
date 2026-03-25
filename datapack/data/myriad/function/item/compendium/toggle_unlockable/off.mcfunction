# Makes all of the player's compendiums fully unlocked

# Show a message
tellraw @s ["",{"translate":"myriadc.compendium_unlocked.message_icon","font": "myriad.compendium:static"},{"translate":"myriadc.compendium_unlocked.text"}]
# Show a toast
advancement grant @s only myriad:compendium/unlock_compendium
# Disable unlockable mode
tag @s remove myriad.unlockable_compendium
# Convert all unlockable compendiums into unlocked ones
function myriad:item/compendium/find_item/from/reset_item {id:"unlockable_compendium"}
