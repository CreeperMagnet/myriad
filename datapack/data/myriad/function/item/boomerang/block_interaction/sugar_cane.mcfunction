# Special interactions with sugar cane

execute unless block ~ ~-1 ~ minecraft:sugar_cane if block ~ ~1 ~ minecraft:sugar_cane run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~-1 ~ minecraft:sugar_cane run setblock ~ ~ ~ minecraft:air destroy