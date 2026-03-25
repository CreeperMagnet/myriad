# Commands to run off frostblooms tickly

execute if block ~ ~2 ~ #myriad:air run setblock ~ ~2 ~ minecraft:light[level=0]
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:spruce_sapling[stage=0] run function myriad:block/frostbloom/block_change
