# Gives blindness

advancement grant @s only myriad:compendium/sightless_eye/unlock

execute store result score #difficulty myriad.dummy run difficulty
execute if score #difficulty myriad.dummy matches 3 run effect give @s minecraft:blindness 10
execute if score #difficulty myriad.dummy matches 2 run effect give @s minecraft:blindness 7
execute if score #difficulty myriad.dummy matches 1 run effect give @s minecraft:blindness 5
advancement revoke @s only myriad:technical/entity_hurt_player/glow_lichen_zombie
