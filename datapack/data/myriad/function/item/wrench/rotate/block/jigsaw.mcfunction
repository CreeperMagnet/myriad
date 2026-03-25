# Rotates a block

execute if block ~ ~ ~ jigsaw[orientation=north_up] run return run setblock ~ ~ ~ jigsaw[orientation=east_up]
execute if block ~ ~ ~ jigsaw[orientation=east_up] run return run setblock ~ ~ ~ jigsaw[orientation=south_up]
execute if block ~ ~ ~ jigsaw[orientation=south_up] run return run setblock ~ ~ ~ jigsaw[orientation=west_up]
execute if block ~ ~ ~ jigsaw[orientation=west_up] run return run setblock ~ ~ ~ jigsaw[orientation=up_north]
execute if block ~ ~ ~ jigsaw[orientation=up_north] run return run setblock ~ ~ ~ jigsaw[orientation=up_east]
execute if block ~ ~ ~ jigsaw[orientation=up_east] run return run setblock ~ ~ ~ jigsaw[orientation=up_south]
execute if block ~ ~ ~ jigsaw[orientation=up_south] run return run setblock ~ ~ ~ jigsaw[orientation=up_west]
execute if block ~ ~ ~ jigsaw[orientation=up_west] run return run setblock ~ ~ ~ jigsaw[orientation=down_north]
execute if block ~ ~ ~ jigsaw[orientation=down_north] run return run setblock ~ ~ ~ jigsaw[orientation=down_east]
execute if block ~ ~ ~ jigsaw[orientation=down_east] run return run setblock ~ ~ ~ jigsaw[orientation=down_south]
execute if block ~ ~ ~ jigsaw[orientation=down_south] run return run setblock ~ ~ ~ jigsaw[orientation=down_west]
execute if block ~ ~ ~ jigsaw[orientation=down_west] run return run setblock ~ ~ ~ jigsaw[orientation=north_up]