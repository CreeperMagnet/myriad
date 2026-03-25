# Checks for a sculk block attached to the conductor

execute positioned ^ ^ ^1 if block ^ ^ ^-2 #myriad:soul_conductor_ignore if block ^ ^ ^ minecraft:sculk run function myriad:block/soul_conductor/find_path/start/begin_flood_fills