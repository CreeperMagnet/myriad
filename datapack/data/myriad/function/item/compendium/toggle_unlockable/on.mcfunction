# Makes all of the player's compendiums unlockable

# Show a message
tellraw @s ["",{"translate":"myriadc.compendium_unlocked.message_icon","font": "myriad.compendium:static"},{"translate":"myriadc.compendium_locked.text"}]
# Show a toast
advancement grant @s only myriad:compendium/lock_compendium
# Enable unlockable mode
tag @s add myriad.unlockable_compendium
# Convert all unlocked compendiums into unlockable ones
function myriad:item/compendium/find_item/from/reset_item {id:"compendium"}
# Update the compendiums
function myriad:item/compendium/update_unlocks/main
