# Commands to run if the player is holding an item in either of their hands.

## Warped fungus on a stick commands
execute if entity @s[scores={myriad.used_warped_fungus_on_a_stick=1..}] run function myriad:item/warped_fungus_on_a_stick/use

## Totem of Undying and void bugfix
execute if score @s myriad.health matches 0..5 if items entity @s weapon.* minecraft:totem_of_undying run effect give @s[predicate=myriad:location_check/in_void,predicate=myriad:location_check/below_-50] minecraft:instant_health 1 0

## Removing the paintbrush tag
scoreboard players reset @s[tag=!myriad.painting_with_brush] myriad.paintbrush_timer
tag @s remove myriad.painting_with_brush

## Compendium
execute if entity @s[tag=!myriad.compendium_ban,tag=!myriad.can_change_compendium_mode,predicate=myriad:entity_properties/slots/weapon/compendium] run function myriad:item/compendium/toggle_unlockable/enable
