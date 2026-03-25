# Rotates a block

$execute if block ~ ~ ~ $(block)[triggered=false] run function myriad:item/wrench/rotate/macro/facing_all {block:"$(block)"}

$execute if block ~ ~ ~ $(block)[triggered=true,facing=north] run return run setblock ~ ~ ~ $(block)[facing=east,triggered=true]
$execute if block ~ ~ ~ $(block)[triggered=true,facing=east] run return run setblock ~ ~ ~ $(block)[facing=south,triggered=true]
$execute if block ~ ~ ~ $(block)[triggered=true,facing=south] run return run setblock ~ ~ ~ $(block)[facing=west,triggered=true]
$execute if block ~ ~ ~ $(block)[triggered=true,facing=west] run return run setblock ~ ~ ~ $(block)[facing=up,triggered=true]
$execute if block ~ ~ ~ $(block)[triggered=true,facing=up] run return run setblock ~ ~ ~ $(block)[facing=down,triggered=true]
$execute if block ~ ~ ~ $(block)[triggered=true,facing=down] run return run setblock ~ ~ ~ $(block)[facing=north,triggered=true]
