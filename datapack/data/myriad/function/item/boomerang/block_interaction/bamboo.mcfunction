# Special interactions with bamboo

execute if block ~ ~-1 ~ #minecraft:supports_bamboo unless block ~ ~-1 ~ minecraft:bamboo if block ~ ~1 ~ minecraft:bamboo run setblock ~ ~ ~ minecraft:bamboo_sapling
execute if block ~ ~1 ~ minecraft:bamboo run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:bamboo run setblock ~ ~ ~ minecraft:air destroy