# Buckets an axolotl

data remove storage myriad:temp root
function myriad:item/find_items/common_start {data:{id:"minecraft:axolotl_bucket"},function:"myriad:item/axolotl_bucket/item_found"}

advancement revoke @s only myriad:technical/player_interacted_with_entity/bucket_axolotl
