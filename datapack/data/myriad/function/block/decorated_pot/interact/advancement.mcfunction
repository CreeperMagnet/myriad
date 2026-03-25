# Commands to run on decorated pot click

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function myriad:block/decorated_pot/interact/raycast
advancement revoke @s only myriad:technical/any_block_use/click_custom_decorated_pot