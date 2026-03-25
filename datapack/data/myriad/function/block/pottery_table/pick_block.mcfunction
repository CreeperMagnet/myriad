# Runs when the player's inventory gets a barrel with block nbt

function myriad:item/find_items/common_start {data:{components:{"minecraft:custom_data":{myriad:{block_id:"pottery_table"}}}},function:'myriad:item/modify_slot/type/loot {path:"myriad:items/pottery_table"}'}

advancement revoke @s only myriad:technical/inventory_changed/pick_block/pottery_table
