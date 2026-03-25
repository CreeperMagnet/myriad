# Moves the boomerang one block

# Begin loop
scoreboard players add @s myriad.dummy 1

# Interactions with blocks
execute positioned ^ ^ ^0.05 if block ~ ~ ~ #myriad:boomerang/interact run function myriad:item/boomerang/block_interaction/main
execute positioned ^ ^ ^0.05 if predicate myriad:location_check/boomerang_fire_block if entity @s[tag=!myriad.boomerang.on_fire] run function myriad:item/boomerang/catch_fire

# Skimming off the surface of water, lava, etc.
execute rotated 0 0 if block ~ ~ ~ #myriad:air if block ~ ~-0.2 ~ #myriad:boomerang/interact_surface positioned ~ ~-0.3 ~ run function myriad:item/boomerang/block_interaction/surface
execute if entity @s[scores={myriad.dummy2=..49}] if block ~ ~ ~ #myriad:air if block ^ ^ ^0.1 #myriad:boomerang/skims_off_surface run tp @s ~ ~ ~ ~ 0

# If boomerang is on the way away from the player and hits a block/shulker, it bounces
execute if entity @s[scores={myriad.dummy2=..49}] unless block ^ ^ ^0.05 #myriad:boomerang/ignore run function myriad:item/boomerang/bounce
execute if entity @s[scores={myriad.dummy2=..49}] positioned ^ ^ ^0.05 if entity @e[type=minecraft:shulker,dx=0] run function myriad:item/boomerang/bounce

# If boomerang *doesn't* hit a block, it moves
execute if block ^ ^ ^0.05 #myriad:boomerang/ignore unless predicate myriad:location_check/in_water run tp @s ^ ^ ^0.05
execute if block ^ ^ ^0.05 #myriad:boomerang/ignore if predicate myriad:location_check/in_water run tp @s ^ ^ ^0.025

# Store boomerang data for pickup and damage UUID commands
data modify storage myriad:temp root.boomerang set from entity @s item.components."minecraft:custom_data".myriad

# If boomerang is on the way back and hits a block, it breaks
execute if entity @s[scores={myriad.dummy2=50..}] at @s unless block ^ ^ ^0.05 #myriad:boomerang/ignore positioned ^ ^ ^-0.5 run function myriad:item/boomerang/pop_into_item with storage myriad:temp root.boomerang.macro_input

# Pickup attempt nonsense
execute if entity @s[scores={myriad.dummy2=50..}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,gamemode=!spectator] run function myriad:item/boomerang/entity_interaction/pickup/main

# Entity interactions (damage, teleportation, breaking boats/minecarts)
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#myriad:boomerang/ignore,dx=0] at @s run function myriad:item/boomerang/entity_interaction/main with storage myriad:temp root.boomerang.macro_input

# Continue loop
execute if entity @s[scores={myriad.dummy=1..19}] at @s run function myriad:item/boomerang/iterate