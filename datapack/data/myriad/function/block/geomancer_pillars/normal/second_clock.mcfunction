# Functions to run off a normal geomancer pillar every tick

scoreboard players add @s myriad.dummy2 1
execute if entity @s[scores={myriad.dummy2=5}] run playsound minecraft:block.deepslate.break block @a[distance=..16]
execute if entity @s[scores={myriad.dummy2=5}] run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"myriad:block/geomancer_pillar/normal"}}} ~ ~1 ~ 0.5 1 0.5 0.1 100 normal
execute if entity @s[scores={myriad.dummy2=5}] run fill ~ ~-0.5 ~ ~ ~1.5 ~ minecraft:air replace minecraft:barrier
execute if entity @s[scores={myriad.dummy2=5}] run kill @s
