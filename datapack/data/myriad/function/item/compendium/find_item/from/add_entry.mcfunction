# Sets a return function for each compendium that is found

data modify storage myriad:temp root.find_compendium set value {function:"myriad:item/compendium/unlock/inject/item_found with storage myriad:temp root.start_injection"}
function myriad:item/compendium/find_item/main
