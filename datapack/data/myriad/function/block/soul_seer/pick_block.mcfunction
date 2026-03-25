# Runs when the player's inventory gets a dropper with block nbt

function myriad:item/find_items/common_start {data:{components:{"minecraft:custom_data":{myriad:{block_id:"soul_seer"}}}},function:'myriad:item/modify_slot/type/loot {path:"myriad:items/soul_seer"}'}

advancement revoke @s only myriad:technical/inventory_changed/pick_block/soul_seer
