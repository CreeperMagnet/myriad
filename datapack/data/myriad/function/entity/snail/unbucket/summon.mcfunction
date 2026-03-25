# Summons a snail

playsound myriad:entity.snail.unbucket neutral @a[distance=..16]
data remove storage myriad:temp root
execute if predicate myriad:entity_properties/slots/weapon.mainhand/snail_bucket run data modify storage myriad:temp root.snail_bucket set from entity @s SelectedItem
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/snail_bucket run data modify storage myriad:temp root.snail_bucket set from entity @s equipment.offhand
function myriad:entity/snail/summon/spawn

# Replace mainhand/offhand with bucket depending on predicate
execute if predicate myriad:entity_properties/slots/weapon.mainhand/snail_bucket run swing
execute if predicate myriad:entity_properties/slots/weapon.mainhand/snail_bucket run return run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:bucket
swing @s offhand
item replace entity @s[gamemode=!creative] weapon.offhand with minecraft:bucket