# Rotates a block

$execute if block ~ ~ ~ $(block)[$(segment_blockstate)=1] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"$(segment_blockstate)=1"}
$execute if block ~ ~ ~ $(block)[$(segment_blockstate)=2] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"$(segment_blockstate)=2"}
$execute if block ~ ~ ~ $(block)[$(segment_blockstate)=3] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"$(segment_blockstate)=3"}
$execute if block ~ ~ ~ $(block)[$(segment_blockstate)=4] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"$(segment_blockstate)=4"}