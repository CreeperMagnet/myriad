# Toggles the compendium mode

# The two different modes
execute if score @s myriadc.internal_trigger matches 40 run function myriad:item/compendium/toggle_unlockable/on
execute if score @s myriadc.internal_trigger matches 41 run function myriad:item/compendium/toggle_unlockable/off

# Re-enable the trigger
scoreboard players enable @s[predicate=myriad:entity_properties/slots/weapon/compendium] myriadc.internal_trigger
# Revoke compendium changing rights if the player is no longer holding it
execute unless predicate myriad:entity_properties/slots/weapon/compendium run tag @s remove myriad.can_change_compendium_mode
# Reset trigger score
scoreboard players set @s myriadc.internal_trigger 0
