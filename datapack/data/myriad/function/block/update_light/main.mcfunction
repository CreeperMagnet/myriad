# Functions to update light levels for a custom block

data remove entity @s brightness
scoreboard players set #temp_0 myriad.dummy 0
execute if block ~ ~ ~ #myriad:opaque align xyz positioned ~ ~-0.5 ~ run function myriad:block/update_light/edit_brightness