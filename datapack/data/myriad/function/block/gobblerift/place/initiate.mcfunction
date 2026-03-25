# Initiates the gobblerift's tags

execute if data storage myriad:temp root.name run data modify entity @s CustomName set from storage myriad:temp root.name
data modify entity @s item.components."minecraft:custom_data".dimension set from storage myriad:temp root.dimension

execute if data storage myriad:gobblerift_data next_id if data storage myriad:temp root.id run function myriad:block/gobblerift/array_management/check_existing with storage myriad:temp root
execute if data storage myriad:gobblerift_data next_id unless data storage myriad:temp root.id run function myriad:block/gobblerift/array_management/add_using_next_id
execute unless data storage myriad:gobblerift_data next_id run function myriad:block/gobblerift/array_management/fabricate_array

data modify entity @s item.components."minecraft:custom_data".id set from storage myriad:gobblerift_data array[-1].id

execute on passengers store result score @s myriad.dummy run data get storage myriad:gobblerift_data array[-1].id
tag @s remove myriad.gobblerift.start
