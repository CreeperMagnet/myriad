# Commands to run when the glow block stops glowing

function myriad:block/soul_seer/remove_items/main
scoreboard players reset @s myriad.dummy2
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value false
execute unless block ~ ~1 ~ minecraft:tinted_glass run playsound myriad:block.soul_seer.emanate block @a[distance=..6] ~ ~ ~ 1 0.5 1
execute if block ~ ~1 ~ minecraft:tinted_glass run playsound myriad:block.soul_seer.emanate block @a[distance=..6] ~ ~ ~ 0.2 0.5 1
data modify entity @s item.components."minecraft:custom_data".comparator set value 0

tag @s remove myriad.tag
execute if block ~ ~ ~ minecraft:dropper[triggered=true] run tag @s add myriad.tag
setblock ~ ~ ~ minecraft:cobbled_deepslate
execute if entity @s[tag=myriad.tag] run setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=true]{CustomName:{"font":"myriad:technical","translate":"block.myriad.soul_seer.name"},"components":{"minecraft:custom_data":{"myriad":{block_id:"soul_seer"}}},lock:{components:{"minecraft:custom_data":{myriad:{soul_seer:1b}}}}}
execute if entity @s[tag=!myriad.tag] run setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=false]{CustomName:{"font":"myriad:technical","translate":"block.myriad.soul_seer.name"},"components":{"minecraft:custom_data":{"myriad":{block_id:"soul_seer"}}},lock:{components:{"minecraft:custom_data":{myriad:{soul_seer:1b}}}}}