# Starts the locket process

data remove storage myriad:temp root

# store locket data to storage for modification
execute if predicate myriad:entity_properties/slots/weapon.mainhand/locket_of_learning run data modify storage myriad:temp root.item set from entity @s SelectedItem
execute if predicate myriad:entity_properties/slots/weapon.mainhand/locket_of_learning run data modify storage myriad:temp root.item.slot set value "weapon.mainhand"
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/locket_of_learning run data modify storage myriad:temp root.item set from entity @s equipment.offhand
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/locket_of_learning run data modify storage myriad:temp root.item.slot set value "weapon.offhand"

# Run deposit/withdraw functions

# Stored points go in #temp_0
execute store result score #temp_0 myriad.dummy run data get storage myriad:temp root.item.components."minecraft:custom_data".myriad.stored_points

execute store result score @s myriad.dummy run xp query @s points
execute unless predicate myriad:entity_properties/sneaking unless entity @s[nbt={XpLevel:0},scores={myriad.dummy=0}] unless score #temp_0 myriad.dummy matches 1395 run function myriad:item/locket_of_learning/deposit/main
execute if predicate myriad:entity_properties/sneaking run function myriad:item/locket_of_learning/withdraw/main