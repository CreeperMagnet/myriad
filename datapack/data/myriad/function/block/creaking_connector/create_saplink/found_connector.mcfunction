# Gives the actual saplink item

data remove storage myriad:temp root
data modify storage myriad:temp root set from block ~ ~ ~ components."minecraft:custom_data"
data modify storage myriad:temp root.sapling_id set from entity @s SelectedItem.id

item modify entity @s[gamemode=!creative] weapon.mainhand myriad:reduce_count
function myriad:block/creaking_connector/create_saplink/give_item with storage myriad:temp root
playsound myriad:block.creaking_connector.bind_saplink block