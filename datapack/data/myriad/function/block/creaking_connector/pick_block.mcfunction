# Runs when the player's inventory gets a dropper with block nbt

function myriad:item/find_items/common_start {data:{components:{"minecraft:custom_data":{myriad:{block_id:"creaking_connector"}}}},function:'myriad:item/modify_slot/type/loot {path:"myriad:items/creaking_connector"}'}

advancement revoke @s only myriad:technical/inventory_changed/pick_block/creaking_connector
