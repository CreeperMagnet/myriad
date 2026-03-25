# Ensures that all connector IDs are in ascending order

execute store result score @s myriad.dummy run data get storage myriad:temp root.id
execute store result score #temp_1 myriad.dummy run data get storage myriad:creaking_connector_data next_id
execute if score @s myriad.dummy >= #temp_1 myriad.dummy run return run function myriad:block/creaking_connector/array_management/add_using_next_id
function myriad:block/creaking_connector/array_management/add with storage myriad:temp root