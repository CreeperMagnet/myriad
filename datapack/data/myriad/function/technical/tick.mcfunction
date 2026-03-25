# Functions to run every single tick

## Entity Ticking

### Markers
execute as @e[type=minecraft:marker,tag=myriad.marker] at @s run function myriad:entity/technical/tick/marker

### Item displays
execute as @e[type=minecraft:item_display,tag=myriad.item_display] at @s run function myriad:entity/technical/tick/item_display

### Archaeologist
execute as @e[type=minecraft:villager,tag=myriad.archaeologist] at @s run function myriad:entity/archaeologist/tick

### Trader Entities
execute as @e[type=minecraft:wandering_trader,tag=myriad.trader_entity] at @s run function myriad:entity/trader_entity/tick

### Iceologer Ice
execute as @e[type=minecraft:falling_block,tag=myriad.falling_ice] at @s run function myriad:entity/iceologer/ice/tick

### Player Tick
execute as @a at @s run function myriad:entity/player/tick/main
