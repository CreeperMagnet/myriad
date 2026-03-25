# Functions to run off of a guardian hit by lightning

data merge entity @s {DeathTime:200s,Silent:1b}
data remove entity @s DeathLootTable
tp @s ~ -1000 ~
summon minecraft:elder_guardian ~ ~ ~ {Tags:["myriad.unnatural_elder_guardian"]}