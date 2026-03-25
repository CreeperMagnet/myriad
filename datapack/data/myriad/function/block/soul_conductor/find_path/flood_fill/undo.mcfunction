# Erases the path created by the last flood fill

# Set block back to proper state
setblock ~ ~ ~ minecraft:sculk

# Down
execute rotated ~ 90 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:dispenser{CustomName:{"translate":"myriad:soul_conductor_floodfill"}} run function myriad:block/soul_conductor/find_path/flood_fill/undo
# Forward
execute rotated ~ 0 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:dispenser{CustomName:{"translate":"myriad:soul_conductor_floodfill"}} run function myriad:block/soul_conductor/find_path/flood_fill/undo
# Left
execute rotated ~90 0 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:dispenser{CustomName:{"translate":"myriad:soul_conductor_floodfill"}} run function myriad:block/soul_conductor/find_path/flood_fill/undo
# Right
execute rotated ~-90 0 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:dispenser{CustomName:{"translate":"myriad:soul_conductor_floodfill"}} run function myriad:block/soul_conductor/find_path/flood_fill/undo
# Up
execute rotated ~ -90 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:dispenser{CustomName:{"translate":"myriad:soul_conductor_floodfill"}} run function myriad:block/soul_conductor/find_path/flood_fill/undo
# Backwards
execute rotated ~180 0 positioned ^ ^ ^1 if block ^ ^ ^ minecraft:dispenser{CustomName:{"translate":"myriad:soul_conductor_floodfill"}} run function myriad:block/soul_conductor/find_path/flood_fill/undo