# Gives the player mining fatigue if they enter a monument

execute if entity @e[type=minecraft:elder_guardian,distance=..50] run function myriad:entity/player/mining_fatigue/elder_guardian_effects
advancement revoke @s only myriad:technical/location/enter_monument