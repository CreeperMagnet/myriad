# Adds all scoreboards and sets up everything

# Use for single-tick operations
scoreboard objectives add myriad.dummy dummy

tellraw @a[predicate=myriad:entity_properties/is_developer] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.myriad.reload.success","color":"white","bold":false}]
execute unless score #server_version myriad.dummy matches 122 run function myriad:technical/initiate

# Refresh the compendium for all players that currently have one
execute as @a run function myriad:item/compendium/refresh

## Gamerules
gamerule minecraft:log_admin_commands false
gamerule minecraft:command_block_output false
gamerule minecraft:max_command_sequence_length 1073741824

## Compendium Data
execute unless data storage myriad:compendium player_data run data merge storage myriad:compendium {player_data:[]}
# The following line is updated when the generator is run
data modify storage myriad:compendium version set value {release:12,dev:0}

## Scoreboards
scoreboard objectives add myriad.used_warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add myriad.health health
scoreboard objectives add myriad.deaths deathCount
scoreboard objectives add myriad.tea dummy
scoreboard objectives add myriad.boomerang_cooldown dummy
scoreboard objectives add myriad.cursed_crown_cooldown dummy
scoreboard objectives add myriad.soul_seer_cooldown dummy
scoreboard objectives add myriad.paintbrush_timer dummy
scoreboard objectives add myriad.golden_dandelion_cooldown dummy

#Use for operations spanning multiple ticks
scoreboard objectives add myriad.dummy2 dummy

## Scoreboard Constants
scoreboard players set #-1 myriad.dummy -1
scoreboard players set #0 myriad.dummy 0
scoreboard players set #2 myriad.dummy 2
scoreboard players set #3 myriad.dummy 3
scoreboard players set #4 myriad.dummy 4
scoreboard players set #5 myriad.dummy 5
scoreboard players set #6 myriad.dummy 6
scoreboard players set #10 myriad.dummy 10
scoreboard players set #12 myriad.dummy 12
scoreboard players set #16 myriad.dummy 16
scoreboard players set #18 myriad.dummy 18
scoreboard players set #25 myriad.dummy 25
scoreboard players set #31 myriad.dummy 31
scoreboard players set #60 myriad.dummy 60
scoreboard players set #100 myriad.dummy 100
scoreboard players set #180 myriad.dummy 180
scoreboard players set #1000 myriad.dummy 1000

## Wandering Witch Timer
execute unless score #wandering_witch_timer myriad.dummy matches -2147483648..2147483647 run scoreboard players set #wandering_witch_timer myriad.dummy 180

## Triggered Objectives
scoreboard objectives add myriad.emoji trigger
scoreboard objectives add myriadc.internal_trigger trigger

## Teams
team add myriad.recovery_compass
team modify myriad.recovery_compass color aqua
team add smithed.prevent_aggression
team modify smithed.prevent_aggression friendlyFire false
team add myriad.no_nametag
team modify myriad.no_nametag nametagVisibility never