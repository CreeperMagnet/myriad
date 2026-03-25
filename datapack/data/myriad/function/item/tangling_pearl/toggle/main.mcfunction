# Changes the enabled status

execute if data storage myriad:temp root.item.components."minecraft:custom_data".myriad{enabled:0b} run return run function myriad:item/tangling_pearl/toggle/on
function myriad:item/tangling_pearl/toggle/off