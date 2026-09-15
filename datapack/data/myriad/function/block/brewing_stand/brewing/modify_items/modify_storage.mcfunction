# Modifies the item in storage... or in the brewing stand, using item modifiers

# Custom potion creation/some mundane exceptions
$execute if data storage myriad:temp root.ingredient.components."minecraft:custom_data".myriad{id:"scalesprouts"} run return run function myriad:block/brewing_stand/brewing/brew_custom_potion/serum_of_sprouting {slot:$(slot)}
$execute if data storage myriad:temp root.ingredient{id:"minecraft:fermented_spider_eye"} if data storage myriad:temp root.item.components."minecraft:custom_data".myriad{id:"serum_of_sprouting"} run item replace block ~ ~ ~ container.$(slot) with minecraft:air
$execute if data storage myriad:temp root.ingredient{id:"minecraft:fermented_spider_eye"} if data storage myriad:temp root.item.components."minecraft:custom_data".myriad{id:"serum_of_sprouting"} run return run loot replace block ~ ~ ~ container.$(slot) loot myriad:items/serum_of_shrinking
$execute if data storage myriad:temp root.ingredient.components."minecraft:custom_data".myriad{id:"heartbeet"} run return run function myriad:block/brewing_stand/brewing/brew_custom_potion/default_macro {slot:$(slot),potion:"fortitude"}
$execute if data storage myriad:temp root.ingredient.components."minecraft:custom_data".myriad{id:"enchanted_golden_carrot"} if data storage myriad:temp root.item.components."minecraft:potion_contents"{"potion":"minecraft:awkward"} run return run item modify block ~ ~ ~ container.$(slot) myriad:set_potion_data/type/long_night_vision

# Below this point is only stuff that needs the data of the brewing stand modified directly (diluted pots, making splash/lingering)
execute if data storage myriad:temp root.ingredient{id:"minecraft:amethyst_shard"} if data storage myriad:temp root.item{id:"minecraft:potion"} run function myriad:block/brewing_stand/brewing/dilute_potion/check_diluted_type

$data modify storage myriad:temp root.item.Slot set value $(slot)b
$data modify block ~ ~ ~ Items[{Slot:$(slot)b}] set from storage myriad:temp root.item