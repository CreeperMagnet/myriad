# Drops the proper amount of harvested crops from this block

setblock ~ ~ ~ minecraft:potatoes
particle minecraft:block{block_state:{Name:"minecraft:potatoes",Properties:{age:"7"}}} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.crop.break block @a[distance=..16]
execute if entity @s[tag=myriad.boomerang.on_fire,tag=!myriad.boomerang.cooked_potato] run function myriad:item/boomerang/block_interaction/seeds/potatoes_advancement with storage myriad:temp root.boomerang.macro_input
execute if entity @s[tag=myriad.boomerang.on_fire] run return run loot spawn ~ ~ ~ loot myriad:blocks/boomerang/potatoes_fire
loot spawn ~ ~ ~ loot myriad:blocks/boomerang/potatoes