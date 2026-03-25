# Targets entities within macroed distance

$execute as @e[type=minecraft:item_display,distance=..$(distance),tag=myriad.prevents_hoppers] at @s positioned ~ ~-1 ~ run function myriad:block/hopper_updating/fill

