# Rotates a block

$execute if block ~ ~ ~ $(block)[waterlogged=false] run function myriad:item/wrench/rotate/macro/rotation {block:"$(block)"}
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=0] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=1]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=1] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=2]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=2] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=3]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=3] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=4]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=4] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=5]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=5] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=6]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=6] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=7]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=7] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=8]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=8] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=9]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=9] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=10]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=10] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=11]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=11] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=12]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=12] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=13]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=13] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=14]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=14] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=15]
$execute if block ~ ~ ~ $(block)[waterlogged=true,rotation=15] run return run setblock ~ ~ ~ $(block)[waterlogged=true,rotation=0]
