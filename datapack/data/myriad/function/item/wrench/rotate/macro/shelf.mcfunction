# Rotates a shelf block

$execute if block ~ ~ ~ $(block)[powered=true] run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable_extra_blockstate {block:"$(block)",blockstate:"powered=true"}
$execute if block ~ ~ ~ $(block)[powered=false] run function myriad:item/wrench/rotate/macro/facing_cardinal_waterloggable_extra_blockstate {block:"$(block)",blockstate:"powered=false"}
