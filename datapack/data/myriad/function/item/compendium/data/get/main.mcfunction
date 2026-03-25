# Get player compendium data

# THE FOLLOWING COMMAND MUST BE RUN SOMEWHERE BEFORE THIS FUNCTION, IN THE SAME TICK:
# >>>> data modify storage myriad:temp root.manage_data.uuid set from entity @s UUID <<<<

function myriad:item/compendium/data/get/find with storage myriad:temp root.manage_data
tag @s remove myriad.dont_set_data
