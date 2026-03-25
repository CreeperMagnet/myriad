# Rotates a block

$execute if block ~ ~ ~ $(block)[waterlogged=false] run function myriad:item/wrench/rotate/macro/hanging_signs/attached/not_waterlogged {block:"$(block)"}
$execute if block ~ ~ ~ $(block)[waterlogged=true] run function myriad:item/wrench/rotate/macro/hanging_signs/attached/waterlogged {block:"$(block)"}