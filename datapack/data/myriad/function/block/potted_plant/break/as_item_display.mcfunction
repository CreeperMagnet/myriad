# This function runs as the item display if the current block is not a flower pot

function myriad:block/potted_plant/break/spawn_item
execute on passengers run kill @s
kill @s
