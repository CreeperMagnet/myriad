# Makes rotten porkchops anger all zombified piglins around you

advancement revoke @s only myriad:technical/consume_item/rotten_porkchop
data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.UUID set from entity @s UUID
execute as @e[type=minecraft:zombified_piglin,distance=..30,sort=nearest,tag=!smithed.entity] run function myriad:item/rotten_porkchop/anger with storage myriad:temp root.macro_input
