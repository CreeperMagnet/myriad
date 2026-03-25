# Adds a tag to players riding striders

execute if entity @s[predicate=myriad:entity_properties/slots/weapon/custom_warped_fungus_on_a_stick] on vehicle run effect give @s minecraft:slowness 1 127 true
execute unless data entity @s RootVehicle run tag @s remove myriad.on_strider