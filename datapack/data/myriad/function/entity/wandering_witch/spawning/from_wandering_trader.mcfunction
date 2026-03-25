# Functions to run off of a wandering trader hit by lightning

data merge entity @s {DeathTime:200s,Silent:1b}
data remove entity @s DeathLootTable
tp @s ~ -1000 ~
execute summon minecraft:wandering_trader run function myriad:entity/wandering_witch/initiate_trader
