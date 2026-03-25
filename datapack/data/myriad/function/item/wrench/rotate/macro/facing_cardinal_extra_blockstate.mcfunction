# Rotates a block with an cardinal facing blockstate and an extra blockstate

$execute if block ~ ~ ~ $(block)[facing=north] run return run setblock ~ ~ ~ $(block)[facing=east,$(blockstate)]
$execute if block ~ ~ ~ $(block)[facing=east] run return run setblock ~ ~ ~ $(block)[facing=south,$(blockstate)]
$execute if block ~ ~ ~ $(block)[facing=south] run return run setblock ~ ~ ~ $(block)[facing=west,$(blockstate)]
$execute if block ~ ~ ~ $(block)[facing=west] run return run setblock ~ ~ ~ $(block)[facing=north,$(blockstate)]