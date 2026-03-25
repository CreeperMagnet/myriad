# Checks if the casing around the active reactor is valid

execute as @e[type=#myriad:nether_reactor_affected,tag=!smithed.entity,distance=..64] run function myriad:block/nether_reactor_core/effects
execute positioned ~ ~-1 ~ if predicate myriad:location_check/nether_reactor/active_multiblock run return 0

# If there is no valid active multiblock, it is no longer on
tag @s remove myriad.nether_reactor_core.on
playsound myriad:block.nether_reactor.burn_out block @a[distance=..16]
particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.2 100 normal
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value false
fill ~1 ~ ~1 ~-1 ~-2 ~-1 minecraft:cracked_polished_blackstone_bricks replace minecraft:polished_blackstone_bricks
