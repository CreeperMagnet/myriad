# Rotates a block with an axis blockstate

$execute if block ~ ~ ~ $(block)[axis=y] run return run setblock ~ ~ ~ $(block)[axis=x]
$execute if block ~ ~ ~ $(block)[axis=x] run return run setblock ~ ~ ~ $(block)[axis=z]
$execute if block ~ ~ ~ $(block)[axis=z] run return run setblock ~ ~ ~ $(block)[axis=y]
