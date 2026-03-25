# Functions to run off of every myriad block every single tick

## Decorated Pot
execute if entity @s[tag=myriad.decorated_pot] positioned ~ ~1 ~ run return run function myriad:block/decorated_pot/tick

## Potted Plant
execute if entity @s[tag=myriad.potted_plant] positioned ~ ~1 ~ run return run function myriad:block/potted_plant/tick

## Custom Flower Pots
execute if entity @s[tag=myriad.flower_pot] positioned ~ ~1 ~ unless block ~ ~ ~ #minecraft:flower_pots run return run function myriad:block/flower_pot/break/main

## Pottery Table
execute if entity @s[tag=myriad.pottery_table] run return run function myriad:block/pottery_table/tick/main

## Phantom Item Frame
execute if entity @s[tag=myriad.phantom_item_frame] positioned ~ ~1 ~ run return run function myriad:block/phantom_item_frame/tick

## Soul Conductor
execute if entity @s[tag=myriad.soul_conductor] unless block ~ ~ ~ minecraft:dropper run return run function myriad:block/soul_conductor/break/main

## Creaking Connector
execute if entity @s[tag=myriad.creaking_connector] run return run function myriad:block/creaking_connector/tick

## Soul Seer
execute if entity @s[tag=myriad.soul_seer] run return run function myriad:block/soul_seer/tick

## Frostbloom
execute if entity @s[tag=myriad.frostbloom] run return run function myriad:block/frostbloom/tick

## Echoing Hourglass
execute if entity @s[tag=myriad.echoing_hourglass] unless block ~ ~1 ~ #myriad:air_or_water run return run function myriad:block/echoing_hourglass/break

## Snail Nest
execute if entity @s[tag=myriad.snail_nest] run return run function myriad:block/snail_nest/tick

## Gobblerift
execute if entity @s[tag=myriad.gobblerift] positioned ~ ~1 ~ run return run function myriad:block/gobblerift/tick

## Nether Reactor
execute if entity @s[tag=myriad.nether_reactor_core] unless block ~ ~ ~ minecraft:obsidian run return run function myriad:block/nether_reactor_core/break

## Sprouter Egg
execute if entity @s[tag=myriad.sprouter_egg] positioned ~ ~1 ~ run function myriad:block/sprouter_egg/tick