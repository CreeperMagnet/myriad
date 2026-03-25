# Sets a return function for each compendium that is found

$data modify storage myriad:temp root.find_compendium set value {function:"myriad:item/compendium/reset_item/main",id:$(id)}
function myriad:item/compendium/find_item/main
