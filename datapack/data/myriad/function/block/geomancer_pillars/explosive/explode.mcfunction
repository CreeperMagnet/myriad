# Makes an explosive pillar explode

particle minecraft:explosion ~ ~ ~ 3 2 3 0.5 20 normal
playsound myriad:block.explosive_geomancer_pillar.explode master @a[distance=..16]
tag @s add myriad.geomancer_explosive_damage_source
data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.UUID set from entity @s item.components."minecraft:custom_data".UUID
execute as @e[distance=..7,tag=!myriad.geomancer,tag=!smithed.strict,type=!#myriad:inanimate] run function myriad:block/geomancer_pillars/explosive/damage with storage myriad:temp root.macro_input
tag @s remove myriad.geomancer_explosive_damage_source