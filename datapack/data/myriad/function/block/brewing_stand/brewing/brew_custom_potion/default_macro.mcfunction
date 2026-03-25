# Starts the recipe process of a brewing recipe

$execute if data storage myriad:temp root.item.components."minecraft:potion_contents"{"potion":"minecraft:awkward"} run return run item modify block ~ ~ ~ container.$(slot) myriad:set_potion_data/type/$(potion)
$execute if data storage myriad:temp root.item.components."minecraft:potion_contents"{"potion":"minecraft:water"} run return run item modify block ~ ~ ~ container.$(slot) myriad:set_potion_data/type/mundane