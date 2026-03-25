# Destroys the output so dupe bugs don't occur

data modify storage myriad:temp root.output_item_temp set from storage myriad:temp root.output_item
execute store success score @s myriad.dummy run data modify storage myriad:temp root.output_item_temp set from entity @s Item
execute if score #temp_0 myriad.dummy matches 0 if score @s myriad.dummy matches 0 run function myriad:block/pottery_table/break/kill_output_item