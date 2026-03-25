# Rotates a block with an axis and waterloggable blockstate

$execute if block ~ ~ ~ $(block)[waterlogged=false] run function myriad:item/wrench/rotate/macro/axis {block:"$(block)"}
$execute if block ~ ~ ~ $(block)[axis=y,waterlogged=true] run return run setblock ~ ~ ~ $(block)[axis=x,waterlogged=true]
$execute if block ~ ~ ~ $(block)[axis=x,waterlogged=true] run return run setblock ~ ~ ~ $(block)[axis=z,waterlogged=true]
$execute if block ~ ~ ~ $(block)[axis=z,waterlogged=true] run return run setblock ~ ~ ~ $(block)[axis=y,waterlogged=true]

