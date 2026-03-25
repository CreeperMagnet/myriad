# Sets a return function for each compendium that is found

data modify storage myriad:temp root.find_compendium set value {function:"myriad:item/compendium/update_unlocks/item_found with storage myriad:temp root.manage_data"}
function myriad:item/compendium/find_item/main
