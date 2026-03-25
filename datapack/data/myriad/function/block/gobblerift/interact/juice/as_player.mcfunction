# Commands to give a player proper riftjuice

execute if data storage myriad:temp root.name if data entity @s[predicate=!myriad:entity_properties/full_inventory] SelectedItem run return run loot give @s loot myriad:technical/riftjuice_bottle/named
execute unless data storage myriad:temp root.name if data entity @s[predicate=!myriad:entity_properties/full_inventory] SelectedItem run return run loot give @s loot myriad:technical/riftjuice_bottle/unnamed
execute if data storage myriad:temp root.name if data entity @s[predicate=myriad:entity_properties/full_inventory] SelectedItem run return run loot spawn ~ ~ ~ loot myriad:technical/riftjuice_bottle/named
execute unless data storage myriad:temp root.name if data entity @s[predicate=myriad:entity_properties/full_inventory] SelectedItem run return run loot spawn ~ ~ ~ loot myriad:technical/riftjuice_bottle/unnamed
execute if data storage myriad:temp root.name unless data entity @s SelectedItem run return run loot replace entity @s weapon.mainhand loot myriad:technical/riftjuice_bottle/named
execute unless data storage myriad:temp root.name unless data entity @s SelectedItem run return run loot replace entity @s weapon.mainhand loot myriad:technical/riftjuice_bottle/unnamed