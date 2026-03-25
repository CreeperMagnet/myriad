# Raycasts

execute if block ^ ^ ^0.01 minecraft:decorated_pot{components:{"minecraft:custom_data":{myriad:{id:"decorated_pot"}}}} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~ ~0.5 as @n[type=minecraft:item_display,distance=..0.0001,tag=myriad.decorated_pot] at @s unless block ~ ~ ~ barrier run function myriad:block/decorated_pot/interact/as_entity
scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^0.01 run function myriad:block/decorated_pot/interact/raycast