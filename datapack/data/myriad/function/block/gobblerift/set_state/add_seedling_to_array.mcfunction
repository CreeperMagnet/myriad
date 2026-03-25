# Adds a seedling to the array

# Otherwise, add using the next id available
execute if data storage myriad:gobblerift_data next_id run function myriad:block/gobblerift/array_management/add_using_next_id
# If there is no next id, make a new array
execute unless data storage myriad:gobblerift_data next_id run function myriad:block/gobblerift/array_management/fabricate_array
# Set entity data based on the results
data modify entity @s item.components."minecraft:custom_data".id set from storage myriad:gobblerift_data array[-1].id
execute on passengers store result score @s myriad.dummy run data get storage myriad:gobblerift_data array[-1].id