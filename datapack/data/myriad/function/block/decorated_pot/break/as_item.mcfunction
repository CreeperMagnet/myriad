# Commands run off the dropped items

item modify entity @s contents myriad:reduce_count
data modify storage myriad:temp root.item.count set value 1
data modify storage myriad:temp root.item.slot set value "contents"
function myriad:technical/macros/loot/replace with storage myriad:temp root.item
scoreboard players set #temp_0 myriad.dummy 1