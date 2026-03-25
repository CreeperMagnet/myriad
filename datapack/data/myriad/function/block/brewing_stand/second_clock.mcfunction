# Commands to run every second

execute unless block ~ ~ ~ minecraft:brewing_stand run return run kill @s
execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{myriad:{}}] run function myriad:block/brewing_stand/brewing/second_clock