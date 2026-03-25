# Rotates a block

$execute if block ~ ~ ~ $(block)[shape=north_south,waterlogged=true] run return run setblock ~ ~ ~ $(block)[shape=east_west,waterlogged=true]
$execute if block ~ ~ ~ $(block)[shape=east_west,waterlogged=true] run return run setblock ~ ~ ~ $(block)[shape=north_south,waterlogged=true]

$execute if block ~ ~ ~ $(block)[shape=north_south,waterlogged=false] run return run setblock ~ ~ ~ $(block)[shape=east_west,waterlogged=false]
$execute if block ~ ~ ~ $(block)[shape=east_west,waterlogged=false] run return run setblock ~ ~ ~ $(block)[shape=north_south,waterlogged=false]
