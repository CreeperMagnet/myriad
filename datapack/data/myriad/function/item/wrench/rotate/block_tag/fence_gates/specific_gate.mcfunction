# Checks fence gate if open or not

$execute if block ~ ~ ~ $(block)[open=false] run return run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"open=false"}
$execute if block ~ ~ ~ $(block) run function myriad:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"open=true"}
