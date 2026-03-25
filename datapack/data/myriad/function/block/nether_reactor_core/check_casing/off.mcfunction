# Checks if the casing around the reactor is valid, then consumes the gold as fuel

execute positioned ~ ~-1 ~ unless predicate myriad:location_check/nether_reactor/inactive_multiblock run return 0

# If there is a valid multiblock, run the below commands
tag @s add myriad.nether_reactor_core.on
fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 minecraft:gilded_blackstone replace #myriad:nether_reactor/gold_blocks
playsound myriad:block.nether_reactor.activate block @a[distance=..16] ~ ~ ~ 1 0.7
advancement grant @a[distance=..16] only myriad:minecraft/nether/nether_reactor
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value true