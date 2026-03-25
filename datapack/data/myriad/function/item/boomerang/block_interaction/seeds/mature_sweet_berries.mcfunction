# Drops the proper amount of harvested crops from this block

setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
particle minecraft:block{block_state:{Name:"minecraft:sweet_berry_bush",Properties:{age:"3"}}} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.sweet_berry_bush.break block @a[distance=..16]
loot spawn ~ ~ ~ loot myriad:blocks/boomerang/mature_sweet_berries