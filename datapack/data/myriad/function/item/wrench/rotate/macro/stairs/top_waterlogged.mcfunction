# Rotates a block

$execute if block ~ ~ ~ $(block)[facing=north] run return run setblock ~ ~ ~ $(block)[facing=east,half=top,waterlogged=true]
$execute if block ~ ~ ~ $(block)[facing=east] run return run setblock ~ ~ ~ $(block)[facing=south,half=top,waterlogged=true]
$execute if block ~ ~ ~ $(block)[facing=south] run return run setblock ~ ~ ~ $(block)[facing=west,half=top,waterlogged=true]
$execute if block ~ ~ ~ $(block)[facing=west] run return run setblock ~ ~ ~ $(block)[facing=north,half=top,waterlogged=true]
