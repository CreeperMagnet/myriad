# Rotates a block

$execute if block ~ ~ ~ $(block)[waterlogged=false] run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/not_waterlogged {block:"$(block)",attached:"$(attached)"}
$execute if block ~ ~ ~ $(block)[waterlogged=true] run function myriad:item/wrench/rotate/macro/hanging_signs/locked_rotation/waterlogged {block:"$(block)",attached:"$(attached)"}