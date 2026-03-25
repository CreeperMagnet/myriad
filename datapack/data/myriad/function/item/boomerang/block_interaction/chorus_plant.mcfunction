# Drops the proper amount of harvested crops from this block

execute if entity @s[tag=!myriad.boomerang.on_fire] run return run setblock ~ ~ ~ air destroy

particle minecraft:block{block_state:"minecraft:chorus_plant"} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 0.8
loot spawn ~ ~ ~ loot myriad:blocks/boomerang/chorus_plant_fire
setblock ~ ~ ~ air
execute positioned ~ ~1 ~ if block ~ ~ ~ chorus_plant[down=true] run function myriad:item/boomerang/block_interaction/chorus_plant
execute positioned ~1 ~ ~ if block ~ ~ ~ chorus_plant[west=true] run function myriad:item/boomerang/block_interaction/chorus_plant
execute positioned ~-1 ~ ~ if block ~ ~ ~ chorus_plant[east=true] run function myriad:item/boomerang/block_interaction/chorus_plant
execute positioned ~ ~ ~1 if block ~ ~ ~ chorus_plant[north=true] run function myriad:item/boomerang/block_interaction/chorus_plant
execute positioned ~ ~ ~-1 if block ~ ~ ~ chorus_plant[south=true] run function myriad:item/boomerang/block_interaction/chorus_plant