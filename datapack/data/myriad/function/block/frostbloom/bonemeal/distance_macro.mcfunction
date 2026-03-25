# Spawns frostbloom petals as frostblooms in given macro distance

$execute as @e[type=minecraft:item_display,tag=myriad.frostbloom,distance=..$(distance)] at @s if block ~ ~ ~ minecraft:spruce_sapling[stage=1] run loot spawn ~ ~0.2 ~ loot myriad:blocks/frostbloom_bonemeal
