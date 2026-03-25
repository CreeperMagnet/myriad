# Commands to run every second

# Store difficulty so that other places can use it
execute store result score #difficulty myriad.dummy run difficulty

# Put all prevent aggro mobs on the proper team
team join smithed.prevent_aggression @e[type=#myriad:prevent_aggression,tag=!smithed.entity]
team leave @e[type=minecraft:vindicator,name=Johnny,team=smithed.prevent_aggression]

# Vanilla entity modification

## Pillager Modifications
execute as @e[type=minecraft:pillager,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] at @s run function myriad:entity/pillager/process

## Enchanter Effect Particles
execute as @e[type=#myriad:enchanter_affected,predicate=myriad:entity_properties/is_affected_by_enchanter] at @s run particle minecraft:enchant ~ ~2 ~ 0.2 0.1 0.2 1 2 normal

## Snail Spawning
execute as @e[type=minecraft:pig,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] at @s run function myriad:entity/pig/process

## Geomancer Spawning
execute as @e[type=minecraft:witch,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] at @s run function myriad:entity/witch/process

## Zombie Modifications
execute as @e[type=minecraft:zombie,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] at @s run function myriad:entity/zombie/process

## Husk Modifications
execute as @e[type=minecraft:husk,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] at @s run function myriad:entity/husk/process

## Cartographer Trades
execute as @e[type=minecraft:villager,tag=!myriad.modified_vanilla_entity,nbt={VillagerData:{profession:"minecraft:cartographer",level:2}},tag=!smithed.entity] at @s run function myriad:entity/cartographer/process

## Coral Drowned & Drowned with Swordfish
execute as @e[type=minecraft:drowned,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] at @s run function myriad:entity/drowned/process

## Wandering Trader Rework
execute as @e[type=minecraft:wandering_trader,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] at @s run function myriad:entity/wandering_trader/process

## Zombie Villager Modifications
execute as @e[type=minecraft:zombie_villager,tag=!myriad.has_been_zombified] at @s run function myriad:entity/villager_zombification/second_clock

# Other Entities

## Fishing bobbers
execute as @e[type=minecraft:fishing_bobber] at @s if predicate myriad:location_check/in_water run function myriad:entity/fishing_bobber/check_treasure

## Loyalty tridents returning from the void
execute as @e[type=minecraft:trident] at @s if predicate myriad:location_check/in_void run data modify entity @s DealtDamage set value 1b

## Trader Entity Functions
execute as @e[type=minecraft:wandering_trader,tag=myriad.trader_entity] at @s run function myriad:entity/trader_entity/second_clock

## All blocks
execute as @e[type=minecraft:item_display,tag=myriad.block] at @s run function myriad:block/second_clock

## Recovery Compass Items
execute as @e[type=minecraft:item,tag=myriad.recovery_compass_item] at @s run function myriad:item/recovery_compass/unglow

## Brewing Stuff
execute as @e[type=minecraft:marker,tag=myriad.brewing_stand] at @s run function myriad:block/brewing_stand/second_clock

## Players
execute as @a at @s run function myriad:entity/player/second_clock



## Reschedule
schedule function myriad:technical/second_clock 1s replace
