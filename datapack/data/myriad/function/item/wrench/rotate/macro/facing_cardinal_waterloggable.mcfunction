# Rotates a block with an cardinal facing blockstate

$execute if block ~ ~ ~ $(block)[waterlogged=false] run function myriad:item/wrench/rotate/macro/facing_cardinal {block:"$(block)"}
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=north] run return run setblock ~ ~ ~ $(block)[facing=east,waterlogged=true]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=east] run return run setblock ~ ~ ~ $(block)[facing=south,waterlogged=true]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=south] run return run setblock ~ ~ ~ $(block)[facing=west,waterlogged=true]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=west] run return run setblock ~ ~ ~ $(block)[facing=north,waterlogged=true]