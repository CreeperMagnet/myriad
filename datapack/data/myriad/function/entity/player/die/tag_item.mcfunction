# Modifies an item dropped on death by a player

scoreboard players operation @s myriad.deaths = @p[advancements={myriad:technical/entity_hurt_player/player_dies=true}] myriad.deaths
data modify entity @s Thrower set from entity @p[advancements={myriad:technical/entity_hurt_player/player_dies=true}] UUID
tag @s add myriad.death_item