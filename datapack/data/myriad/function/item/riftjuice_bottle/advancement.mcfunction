# Makes riftjuice work

advancement revoke @s only myriad:technical/consume_item/riftjuice_bottle
data remove storage myriad:temp root
execute if predicate myriad:entity_properties/slots/weapon.mainhand/riftjuice_bottle store result storage myriad:temp root.riftjuice.id int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".myriad.riftjuice_id
execute unless predicate myriad:entity_properties/slots/weapon.mainhand/riftjuice_bottle store result storage myriad:temp root.riftjuice.id int 1 run data get entity @s equipment.offhand.components."minecraft:custom_data".myriad.riftjuice_id
function myriad:item/riftjuice_bottle/get_gobblerift_data with storage myriad:temp root.riftjuice
execute unless data storage myriad:temp root.riftjuice.pos run playsound myriad:block.gobblerift.teleport_player_fail player @a[distance=..16]
execute if data storage myriad:temp root.riftjuice.pos run function myriad:item/riftjuice_bottle/teleport