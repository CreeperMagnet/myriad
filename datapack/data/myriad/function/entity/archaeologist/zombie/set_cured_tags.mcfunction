# Sets the initial tags of a cured archaeologist

function myriad:entity/archaeologist/set_initial_tags
data modify entity @s VillagerData set from storage myriad:temp root.zombie_data.VillagerData
data modify entity @s Xp set from storage myriad:temp root.zombie_data.Xp
data modify entity @s NoAI set from storage myriad:temp root.zombie_data.NoAI
data modify entity @s CustomName set from storage myriad:temp root.zombie_data.CustomName
execute unless data storage myriad:temp root.zombie_data.CustomName run data modify entity @s CustomName set value {"translate":"entity.myriad.archaeologist"}
execute if entity @s[nbt={CustomName:{"translate":"entity.myriad.archaeologist"}}] run team join myriad.no_nametag @s
$execute unless entity @s[nbt={Gossips:[{Target:$(UUID),Type:"major_positive"}]}] run data modify storage myriad:temp root.zombie_data.Gossips append value {Target:$(UUID),Type:"major_positive",Value:20}
$execute unless entity @s[nbt={Gossips:[{Target:$(UUID),Type:"minor_positive"}]}] run data modify storage myriad:temp root.zombie_data.Gossips append value {Target:$(UUID),Type:"minor_positive",Value:25}
data modify entity @s Gossips set from storage myriad:temp root.zombie_data.Gossips
data modify entity @s VillagerData.profession set value "minecraft:fisherman"
data modify entity @s Offers.Recipes set from storage myriad:temp root.zombie_data.Offers.Recipes
$advancement grant @p[nbt={UUID:$(UUID)}] only minecraft:story/cure_zombie_villager