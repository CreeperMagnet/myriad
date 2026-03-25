# Drops the proper amount of harvested crops from this block

execute if entity @s[tag=!myriad.boomerang.on_fire] run return run setblock ~ ~ ~ air destroy

particle minecraft:block{block_state:"minecraft:bush"} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.crop.break block @a[distance=..16] ~ ~ ~ 1 0.8
loot spawn ~ ~ ~ loot myriad:blocks/boomerang/bush_fire
setblock ~ ~ ~ air