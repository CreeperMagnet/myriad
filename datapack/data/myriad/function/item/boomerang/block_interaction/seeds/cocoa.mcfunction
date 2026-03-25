# Drops the proper amount of harvested crops from this block

execute if block ~ ~ ~ minecraft:cocoa[facing=north] run setblock ~ ~ ~ minecraft:cocoa[facing=north]
execute if block ~ ~ ~ minecraft:cocoa[facing=south] run setblock ~ ~ ~ minecraft:cocoa[facing=south]
execute if block ~ ~ ~ minecraft:cocoa[facing=east] run setblock ~ ~ ~ minecraft:cocoa[facing=east]
execute if block ~ ~ ~ minecraft:cocoa[facing=west] run setblock ~ ~ ~ minecraft:cocoa[facing=west]
particle minecraft:block{block_state:{Name:"minecraft:cocoa",Properties:{age:"2"}}} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 0.85
loot spawn ~ ~ ~ loot myriad:blocks/boomerang/cocoa