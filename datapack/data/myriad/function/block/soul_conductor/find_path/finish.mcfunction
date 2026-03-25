# Finishes the soul conductor path finding algorithm and teleports the player

particle minecraft:sculk_soul ~ ~ ~ 0.2 0.2 0.2 0 20 force
scoreboard players set #soul_conductor_unfinished myriad.dummy 0
execute as @p[advancements={myriad:technical/default_block_use/activate_soul_conductor=true}] run function myriad:block/soul_conductor/find_path/finish_as_player
playsound myriad:block.soul_conductor.transport_player block @a[distance=..16] ~ ~ ~