# Rotates a command-block type

$execute if block ~ ~ ~ $(block)[conditional=false] run function myriad:item/wrench/rotate/macro/facing_all {block:"$(block)"}

$execute if block ~ ~ ~ $(block)[conditional=true,facing=north] run return run setblock ~ ~ ~ $(block)[facing=east,conditional=true]
$execute if block ~ ~ ~ $(block)[conditional=true,facing=east] run return run setblock ~ ~ ~ $(block)[facing=south,conditional=true]
$execute if block ~ ~ ~ $(block)[conditional=true,facing=south] run return run setblock ~ ~ ~ $(block)[facing=west,conditional=true]
$execute if block ~ ~ ~ $(block)[conditional=true,facing=west] run return run setblock ~ ~ ~ $(block)[facing=up,conditional=true]
$execute if block ~ ~ ~ $(block)[conditional=true,facing=up] run return run setblock ~ ~ ~ $(block)[facing=down,conditional=true]
$execute if block ~ ~ ~ $(block)[conditional=true,facing=down] run return run setblock ~ ~ ~ $(block)[facing=north,conditional=true]
