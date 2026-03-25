# Commands to remove transfercooldown from hoppers surrounding a custom block

execute if block ~1 ~ ~ minecraft:hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 0
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 0
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 0
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 0
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 0
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 0
execute as @e[type=minecraft:item_display,tag=myriad.prevents_hoppers,tag=myriad.block,distance=..5] at @s positioned ~ ~-1 ~ run function myriad:block/hopper_updating/fill