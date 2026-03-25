# Makes sure the player's list of unlocked entries doesn't contain non-existant ones

$execute if data storage myriad:temp root{all_entries:["$(entry)"]} run data modify storage myriad:temp root.compendium.unlocked_entries prepend from storage myriad:temp root.compendium.unlocked_entries[-1]
data remove storage myriad:temp root.compendium.unlocked_entries[-1]

data modify storage myriad:temp root.check_unlocks.entry set from storage myriad:temp root.compendium.unlocked_entries[-1]
scoreboard players add #temp_0 myriad.dummy 1
execute if score #temp_0 myriad.dummy < #temp_1 myriad.dummy run function myriad:item/compendium/check_unlock_list/loop
