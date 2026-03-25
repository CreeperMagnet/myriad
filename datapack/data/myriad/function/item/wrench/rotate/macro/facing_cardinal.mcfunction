# Rotates a block with an cardinal facing blockstate

$execute if block ~ ~ ~ $(block)[facing=north] run return run setblock ~ ~ ~ $(block)[facing=east]
$execute if block ~ ~ ~ $(block)[facing=east] run return run setblock ~ ~ ~ $(block)[facing=south]
$execute if block ~ ~ ~ $(block)[facing=south] run return run setblock ~ ~ ~ $(block)[facing=west]
$execute if block ~ ~ ~ $(block)[facing=west] run return run setblock ~ ~ ~ $(block)[facing=north]