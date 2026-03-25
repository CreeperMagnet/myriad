# Initiates the gobblerift seedling's tags

execute if data storage myriad:temp root.name run data modify entity @s CustomName set from storage myriad:temp root.name
data modify entity @s item.components."minecraft:custom_data".dimension set from storage myriad:temp root.dimension
tag @s remove myriad.gobblerift.start