# Drops the proper amount of harvested crops from this block

setblock ~ ~ ~ minecraft:carrots
particle minecraft:block{block_state:{Name:"minecraft:carrots",Properties:{age:"7"}}} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.crop.break block @a[distance=..16]
loot spawn ~ ~ ~ loot myriad:blocks/boomerang/carrots