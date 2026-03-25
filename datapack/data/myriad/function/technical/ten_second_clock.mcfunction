# Commands to run every ten seconds

# Entities

## Fixes for smithed.prevent_aggression
execute as @e[type=minecraft:villager,team=smithed.prevent_aggression,tag=myriad.has_been_zombified] run function myriad:entity/villager_zombification/cured_remove_tags

## Trader Entities
execute as @e[type=minecraft:wandering_trader,tag=myriad.trader_entity] at @s run function myriad:entity/trader_entity/ten_second_clock

## Trident refreshing
execute as @e[type=minecraft:trident,tag=myriad.trident] run data modify entity @s life set value -32767s

## Persistent Cursed Crown
execute as @e[type=minecraft:item,tag=myriad.persistent_cursed_crown] run data modify entity @s Age set value -32767s

## Glow lichen zombie ten second clock
execute as @e[type=minecraft:zombie,tag=myriad.glow_lichen_zombie] at @s run function myriad:entity/glow_lichen_zombie/ten_second_clock

## All blocks
execute as @e[type=minecraft:item_display,tag=myriad.block] at @s run function myriad:block/ten_second_clock

## Gobblerift interaction somehow getting separated from its item display (make sure entire storage array isn't destroyed)
execute as @e[type=minecraft:interaction,tag=myriad.gobblerift,predicate=!myriad:entity_properties/in_vehicle] at @s run function myriad:block/gobblerift/break/interaction

## Zombified Archaeologists
execute as @e[type=minecraft:zombie_villager,tag=myriad.zombified_archaeologist] at @s run function myriad:entity/archaeologist/zombie/ten_second_clock

## Coral drowned burning in sunlight
execute as @e[type=minecraft:drowned,tag=myriad.coral_drowned] at @s unless predicate myriad:time_check/night if dimension minecraft:overworld positioned over motion_blocking if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s Fire set value 200s


# Wandering Witch Spawning Clock
execute if entity @p run function myriad:entity/wandering_witch/spawning/clock



# Reschedule
schedule function myriad:technical/ten_second_clock 10s replace
