# Code to run when clicking a baby wandering trader with a golden dandelion

tag @s remove myriad.tag
scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:entity_interaction_range get 100
execute anchored eyes run function myriad:entity/trader_entity/golden_dandelion/raycast
item modify entity @s[tag=myriad.tag,gamemode=!creative] weapon.mainhand myriad:reduce_count
tag @s remove myriad.tag

advancement revoke @s only myriad:technical/player_interacted_with_entity/baby_trader_entity_golden_dandelion