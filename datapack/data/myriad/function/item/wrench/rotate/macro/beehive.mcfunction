# Rotates a block with a beehive blockstate (honey_level)

$execute if block ~ ~ ~ $(block)[honey_level=0] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"honey_level=0"}
$execute if block ~ ~ ~ $(block)[honey_level=1] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"honey_level=1"}
$execute if block ~ ~ ~ $(block)[honey_level=2] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"honey_level=2"}
$execute if block ~ ~ ~ $(block)[honey_level=3] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"honey_level=3"}
$execute if block ~ ~ ~ $(block)[honey_level=4] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"honey_level=4"}
$execute if block ~ ~ ~ $(block)[honey_level=5] run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"honey_level=5"}
