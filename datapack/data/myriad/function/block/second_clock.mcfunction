# Functions to run off of every myriad block every second

## Nether Reactor
execute if entity @s[tag=myriad.nether_reactor_core] if loaded ~1 ~ ~1 if loaded ~1 ~ ~-1 if loaded ~-1 ~ ~1 if loaded ~-1 ~ ~-1 run function myriad:block/nether_reactor_core/second_clock

## Frostbloom
execute if entity @s[tag=myriad.frostbloom] run function myriad:block/frostbloom/second_clock

## Potted Frostbloom
execute if entity @s[tag=myriad.potted_frostbloom] run particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

## Geomancer pillars
execute if entity @s[tag=myriad.geomancer_pillar] run function myriad:block/geomancer_pillars/second_clock

## Soul Conductor
execute if entity @s[tag=myriad.soul_conductor] positioned ~ ~-1 ~ run function myriad:block/soul_conductor/second_clock

## Echoing hourglass
execute if entity @s[tag=myriad.echoing_hourglass] run function myriad:block/echoing_hourglass/second_clock

## Gobblerift (runs on passenger interaction, which holds the proper entity `Tags`)
execute if entity @s[tag=myriad.gobblerift] on passengers run function myriad:block/gobblerift/second_clock

## Prevent Darkening
execute if entity @s[tag=!myriad.glow_in_the_dark] run function myriad:block/update_light/main