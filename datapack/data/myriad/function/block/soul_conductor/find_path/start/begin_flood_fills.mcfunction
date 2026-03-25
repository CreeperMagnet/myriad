# Starts the flood filling process

scoreboard players operation #soul_conductor_limit_count myriad.dummy = #soul_conductor_limit myriad.dummy
function myriad:block/soul_conductor/find_path/flood_fill/main
function myriad:block/soul_conductor/find_path/flood_fill/undo
execute unless score #soul_conductor_unfinished myriad.dummy matches 0 run playsound myriad:block.soul_conductor.transport_player_fail block @a[distance=..16]
execute if score #soul_conductor_limit_count myriad.dummy matches 0 run playsound myriad:block.soul_conductor.transport_player_fail block @a[distance=..16]
execute if score #soul_conductor_limit_count myriad.dummy matches 0 run title @p[advancements={myriad:technical/default_block_use/activate_soul_conductor=true}] actionbar {"translate":"block.myriad.soul_conductor.exceeded_path_limit","color":"red","with":[{"score":{"name":"#soul_conductor_limit","objective":"myriad.dummy"}}]}