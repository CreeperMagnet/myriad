# Commands to run as the snail found during raycasting

tag @p[advancements={myriad:technical/player_interacted_with_entity/snail=true}] add myriad.tag
execute if data storage myriad:temp root.item{id:"minecraft:beetroot"} run function myriad:entity/snail/interact/feed
execute if data storage myriad:temp root.item.components."minecraft:custom_data".myriad{id:"heartbeet"} run function myriad:entity/snail/interact/feed_heartbeet
execute if data storage myriad:temp root.item{id:"minecraft:beetroot_soup"} run function myriad:entity/snail/interact/breed
execute if data storage myriad:temp root.item{id:"minecraft:bucket"} run function myriad:entity/snail/interact/bucket/main
execute if data storage myriad:temp root.item{id:"minecraft:name_tag"} run data modify entity @s equipment.chest.components."minecraft:custom_name" set from storage myriad:temp root.item.components."minecraft:custom_name"
data remove entity @s Offers.Recipes