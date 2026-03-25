# Destroys amethyst clusters and spawns cool stuff instead

particle minecraft:block{block_state:"minecraft:sculk"} ~ ~ ~ 0.2 0.2 0.2 0.05 30
playsound myriad:block.amethyst_cluster_corrupt block @a[distance=..16] ~ ~ ~ 1 0
loot spawn ~ ~0.5 ~ loot myriad:blocks/echo_shard_from_amethyst_cluster
setblock ~ ~ ~ minecraft:air
tag @s[nbt={warden_spawn_tracker:{warning_level:4}}] add myriad.needs_to_spawn_warden