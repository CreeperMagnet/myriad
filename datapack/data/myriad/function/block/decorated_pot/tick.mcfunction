# Ticking for decorated pots

execute unless entity @s[scores={myriad.dummy2=1..}] unless block ~ ~ ~ decorated_pot run function myriad:block/decorated_pot/break/main

execute if score @s myriad.dummy2 matches 1 run function myriad:block/decorated_pot/interact/reset_barrier_to_pot with entity @s item.components."minecraft:custom_data".pot_data
scoreboard players remove @s[scores={myriad.dummy2=1..}] myriad.dummy2 1