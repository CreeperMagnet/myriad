# Initiates the creaking connector's tags

execute if data storage myriad:temp root.name run data modify entity @s CustomName set from storage myriad:temp root.name

execute if data storage myriad:creaking_connector_data next_id if data storage myriad:temp root.id run function myriad:block/creaking_connector/array_management/check_existing with storage myriad:temp root
execute if data storage myriad:creaking_connector_data next_id unless data storage myriad:temp root.id run function myriad:block/creaking_connector/array_management/add_using_next_id
execute unless data storage myriad:creaking_connector_data next_id run function myriad:block/creaking_connector/array_management/fabricate_array

data modify entity @s item.components."minecraft:custom_data".id set from storage myriad:creaking_connector_data array[-1].id
data modify block ~ ~ ~ components."minecraft:custom_data".id set from storage myriad:creaking_connector_data array[-1].id
data modify block ~ ~ ~ components."minecraft:custom_data".name set from storage myriad:temp root.name

tag @s remove myriad.creaking_connector.initiate
