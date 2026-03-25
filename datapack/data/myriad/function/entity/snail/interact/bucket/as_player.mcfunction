# Replaces items for bucketing snails properly

advancement grant @s only myriad:compendium/snail/unlock

execute if data entity @s[predicate=!myriad:entity_properties/full_inventory] SelectedItem run function myriad:entity/snail/interact/bucket/loot_macros/give with storage myriad:temp root.item
execute if data entity @s[predicate=myriad:entity_properties/full_inventory] SelectedItem run function myriad:entity/snail/interact/bucket/loot_macros/spawn with storage myriad:temp root.item
execute unless data entity @s SelectedItem run function myriad:entity/snail/interact/bucket/loot_macros/weapon.mainhand with storage myriad:temp root.item