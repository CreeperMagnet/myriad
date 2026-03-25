# Commands to fix hoppers surrounding a custom block

execute if block ~1 ~ ~ minecraft:hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 2147483646
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 2147483646
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 2147483646
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 2147483646
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 2147483646
execute if block ~ ~-1 ~ minecraft:hopper[facing=down] run data modify block ~ ~-1 ~ TransferCooldown set value 2147483646
