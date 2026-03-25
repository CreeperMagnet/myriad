# Checks if an entry already exists in the array or not

$execute if data storage myriad:creaking_connector_data array[{id:$(id)}] run function myriad:block/creaking_connector/array_management/add_using_next_id
$execute unless data storage myriad:creaking_connector_data array[{id:$(id)}] run function myriad:block/creaking_connector/array_management/check_ascending