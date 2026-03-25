# Rotates a block

$execute if block ~ ~ ~ $(block)[rotation=0] run return run setblock ~ ~ ~ $(block)[waterlogged=true,attached=$(attached),rotation=4]
$execute if block ~ ~ ~ $(block)[rotation=4] run return run setblock ~ ~ ~ $(block)[waterlogged=true,attached=$(attached),rotation=8]
$execute if block ~ ~ ~ $(block)[rotation=8] run return run setblock ~ ~ ~ $(block)[waterlogged=true,attached=$(attached),rotation=12]
$execute if block ~ ~ ~ $(block)[rotation=12] run return run setblock ~ ~ ~ $(block)[waterlogged=true,attached=$(attached),rotation=0]
