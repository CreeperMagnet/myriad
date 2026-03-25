# Rotates a block

$execute if block ~ ~ ~ $(block)[half=bottom,waterlogged=false] run function myriad:item/wrench/rotate/macro/facing_cardinal {block:"$(block)"}
$execute if block ~ ~ ~ $(block)[half=bottom,waterlogged=true] run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"$(block)"}
$execute if block ~ ~ ~ $(block)[half=top,waterlogged=false] run function myriad:item/wrench/rotate/macro/stairs/top {block:"$(block)"}
$execute if block ~ ~ ~ $(block)[half=top,waterlogged=true] run function myriad:item/wrench/rotate/macro/stairs/top_waterlogged {block:"$(block)"}
