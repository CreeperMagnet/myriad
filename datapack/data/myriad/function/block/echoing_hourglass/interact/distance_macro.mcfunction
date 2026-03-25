# Executes commands as the interaction entity you just clicked

$execute as @e[type=minecraft:interaction,tag=myriad.echoing_hourglass.interaction,distance=..$(distance),nbt={interaction:{}}] at @s run function myriad:block/echoing_hourglass/interact/as_interaction
