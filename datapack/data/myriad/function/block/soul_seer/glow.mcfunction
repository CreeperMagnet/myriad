# Triggers the glowing behavior of soul seer

data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value true
execute unless block ~ ~1 ~ minecraft:tinted_glass run scoreboard players set @s myriad.dummy2 200
execute if block ~ ~1 ~ minecraft:tinted_glass run scoreboard players set @s myriad.dummy2 20
data modify entity @s item.components."minecraft:custom_data".comparator set value 0
data remove storage myriad:temp root
execute if block ~ ~1 ~ minecraft:tinted_glass run data modify storage myriad:temp root.soul_seer_blocked set value 1b
function myriad:block/soul_seer/glow/decode_block
particle minecraft:sculk_soul ~ ~1 ~ 0.15 0 0.15 0.01 10 force
execute unless block ~ ~1 ~ minecraft:tinted_glass run playsound myriad:block.soul_seer.emanate block @a[distance=..6] ~ ~ ~ 1 1 1
execute if block ~ ~1 ~ minecraft:tinted_glass run playsound myriad:block.soul_seer.emanate block @a[distance=..6] ~ ~ ~ 0.2 1 1