# Plays proper SFX for breaking a flower pot in creative

playsound minecraft:block.stone.break block @a[distance=..16] ~ ~ ~ 1 0.75
setblock ~ ~ ~ minecraft:air
particle minecraft:block{block_state:"minecraft:flower_pot"} ~ ~0.25 ~ 0.25 0.25 0.25 0 15 normal
