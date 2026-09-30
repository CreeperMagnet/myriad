# Modifies falling ice to have proper UUID fields

data modify entity @s data.UUID set from storage myriad:temp root.UUID
tag @s remove myriad.newly_spawned_falling_ice