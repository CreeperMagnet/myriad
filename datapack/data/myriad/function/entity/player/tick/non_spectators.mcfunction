# Functions to run off non-spectator players every single tick

## Commands for holding items
execute if predicate myriad:entity_properties/slots/weapon/anything run function myriad:entity/player/tick/holding_item

## Deselecting a compendium
execute if entity @s[tag=!myriad.compendium_ban,tag=myriad.can_change_compendium_mode,predicate=!myriad:entity_properties/slots/weapon/compendium] run trigger myriadc.internal_trigger set -1
execute if entity @s[tag=!myriad.compendium_ban,tag=myriad.can_change_compendium_mode] unless score @s myriadc.internal_trigger matches 0 run function myriad:item/compendium/toggle_unlockable/toggle

## Item teleportation
execute if entity @s[tag=myriad.has_enabled_tangling_pearl] as @e[type=#myriad:tangling_pearl_teleported,distance=..7,tag=!smithed.entity,tag=!myriad.recovery_compass_item,tag=!myriad.persistent_cursed_crown,tag=!myriad.tangling_pearl_item.teleported,nbt=!{Age:0s},nbt=!{Age:1s}] at @s unless data entity @s Thrower run function myriad:item/tangling_pearl/as_item

## Extend turtle helmet water breathing
execute anchored eyes positioned ^ ^ ^ if predicate myriad:multiple_condition_types/turtle_helmet_activation_conditions run effect give @s minecraft:water_breathing 31 0 true

## Reset scores
scoreboard players reset @s myriad.used_warped_fungus_on_a_stick
