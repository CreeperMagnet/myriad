# Commands run off the dropped items

data modify storage myriad:temp root.item.count set value 1
data modify storage myriad:temp root.item.slot set value "contents"
function myriad:technical/macros/loot/replace with storage myriad:temp root.item