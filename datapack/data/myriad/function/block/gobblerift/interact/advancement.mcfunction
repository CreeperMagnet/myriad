# Targets the interaction clicked when you interact with the gobblerift

data remove storage myriad:temp root
data modify storage myriad:temp root.item set from entity @s SelectedItem
execute if entity @s[gamemode=creative] run data modify storage myriad:temp root.creative set value 1b
execute if entity @s[predicate=myriad:entity_properties/slots/weapon.mainhand/gobblerift_meat] run function myriad:block/gobblerift/interact/feed/check_meat
execute as @n[type=minecraft:interaction,tag=myriad.gobblerift,nbt={interaction:{}}] at @s run function myriad:block/gobblerift/interact/as_entity


advancement revoke @s only myriad:technical/player_interacted_with_entity/gobblerift