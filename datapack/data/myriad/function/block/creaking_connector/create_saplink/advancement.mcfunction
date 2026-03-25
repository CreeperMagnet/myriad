# Commands for creating a saplink when clicking a creaking connector with a sapling

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function myriad:block/creaking_connector/create_saplink/raycast
advancement revoke @s only myriad:technical/default_block_use/creaking_connector