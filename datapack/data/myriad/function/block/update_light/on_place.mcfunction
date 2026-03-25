# Updates the light level for newly placed custom blocks

execute if block ~ ~ ~ #myriad:opaque run function myriad:block/update_light/main
tag @s remove myriad.newly_placed_update_light
