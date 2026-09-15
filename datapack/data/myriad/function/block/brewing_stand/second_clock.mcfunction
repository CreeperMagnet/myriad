# Commands to run every second

execute unless block ~ ~ ~ minecraft:brewing_stand run return run kill @s
execute if items block ~ ~ ~ container.3 minecraft:amethyst_shard run return run function myriad:block/brewing_stand/brewing/second_clock
execute if items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{}}] run return run function myriad:block/brewing_stand/brewing/second_clock
execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{myriad:{id:"serum_of_sprouting"}}] if items block ~ ~ ~ container.3 minecraft:fermented_spider_eye run return run function myriad:block/brewing_stand/brewing/second_clock