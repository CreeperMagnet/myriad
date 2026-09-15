# Drops the proper amount of harvested crops from this block

setblock ~ ~ ~ minecraft:nether_wart
particle minecraft:block{block_state:{id:"minecraft:nether_wart",properties:{age:"3"}}} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.nether_wart.break block @a[distance=..16]
loot spawn ~ ~ ~ loot myriad:blocks/boomerang/nether_wart