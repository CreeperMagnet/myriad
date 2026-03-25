# Rotates a block

$execute if block ~ ~ ~ $(block)[waterlogged=false] run function myriad:item/wrench/rotate/macro/facing_all {block:"$(block)"}

$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=north] run return run setblock ~ ~ ~ $(block)[facing=east,waterlogged=true]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=east] run return run setblock ~ ~ ~ $(block)[facing=south,waterlogged=true]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=south] run return run setblock ~ ~ ~ $(block)[facing=west,waterlogged=true]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=west] run return run setblock ~ ~ ~ $(block)[facing=up,waterlogged=true]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=up] run return run setblock ~ ~ ~ $(block)[facing=down,waterlogged=true]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=down] run return run setblock ~ ~ ~ $(block)[facing=north,waterlogged=true]
