# Ticks down the cooldown for players with myriad.cursed_crown_cooldown = 1..

execute if entity @s[predicate=!myriad:entity_properties/slots/armor.head/cursed_crown] run function myriad:item/cursed_crown/unequip/remove_data
execute unless score @s myriad.cursed_crown_cooldown matches 1.. run return fail
scoreboard players remove @s myriad.cursed_crown_cooldown 1
execute if entity @s[tag=myriad.cursed_crown_respawn,nbt=!{Health:0f}] run function myriad:item/cursed_crown/player_dies_keep_inventory/refresh
execute if score @s myriad.cursed_crown_cooldown matches ..0 run function myriad:item/cursed_crown/refresh