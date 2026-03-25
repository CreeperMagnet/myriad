# Picks up the boomerang item for the player

advancement grant @s only myriad:minecraft/adventure/catch_boomerang
scoreboard players set @s myriad.boomerang_cooldown 0
data modify storage myriad:temp root.boomerang.macro_input.UUID set value "found"
data modify storage myriad:temp root.item set from storage myriad:temp root.boomerang.item
data modify storage myriad:temp root.item.slot set from storage myriad:temp root.boomerang.macro_input.slot

playsound minecraft:entity.item.pickup player @a[distance=..16] ~ ~ ~ 1 1.2
execute if data storage myriad:temp root.item{slot:"weapon.offhand"} unless data entity @s[gamemode=!creative] equipment.offhand run return run function myriad:technical/macros/loot/replace with storage myriad:temp root.item
execute if data storage myriad:temp root.item{slot:"weapon.offhand"} if data entity @s[gamemode=!creative] equipment.offhand run data modify storage myriad:temp root.item.slot set value 0
execute if data entity @s[gamemode=!creative] SelectedItem run return run function myriad:item/boomerang/entity_interaction/pickup/restore_slot with storage myriad:temp root.item
execute unless data entity @s[gamemode=!creative] SelectedItem run data modify storage myriad:temp root.item.slot set value "weapon.mainhand"
execute unless data entity @s[gamemode=!creative] SelectedItem run function myriad:technical/macros/loot/replace with storage myriad:temp root.item