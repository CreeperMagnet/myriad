# Reset all unlocked entry data

# Revoke all entry unlock advancements
execute if data storage myriad:temp root.compendium run advancement revoke @s through myriad:compendium/root

# Reset the list of unlocked entries
data modify storage myriad:temp root.compendium set value {unlocked_entries:[]}

# Reset all injection start values
# (This function isn't commented because it is generated)
function myriad:item/compendium/data/reset_starts

# Reset compendium mode to unlockable
tag @s add myriad.unlockable_compendium
# Save storage changes
function myriad:item/compendium/data/set/main
