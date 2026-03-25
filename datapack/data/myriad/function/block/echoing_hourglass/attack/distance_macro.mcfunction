# Executes commands as the interaction entity you just attacked

$execute as @e[type=minecraft:interaction,tag=myriad.echoing_hourglass.interaction,distance=..$(distance),nbt={attack:{}}] at @s run function myriad:block/echoing_hourglass/attack/as_interaction
