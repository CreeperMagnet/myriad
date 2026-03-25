# Adds a value to the array using the next id

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.id set from storage myriad:creaking_connector_data next_id
function myriad:block/creaking_connector/array_management/add with storage myriad:temp root.macro_input

# Increment the next_id value
execute store result score @s myriad.dummy run data get storage myriad:creaking_connector_data next_id
execute store result storage myriad:creaking_connector_data next_id int 1 run scoreboard players add @s myriad.dummy 1