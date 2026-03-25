# Functions to run off of every myriad item display every single tick

## Blocks
execute if entity @s[tag=myriad.block] positioned ~ ~-1 ~ run return run function myriad:block/tick

## Boomerangs
execute if entity @s[tag=myriad.boomerang] run function myriad:item/boomerang/tick
