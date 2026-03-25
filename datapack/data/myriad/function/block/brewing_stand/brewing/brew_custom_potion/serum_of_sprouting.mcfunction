# Checks all needed criteria for a serum of sprouting

$execute if data storage myriad:temp root.item{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:thick"}}} run item replace block ~ ~ ~ container.$(slot) with minecraft:air
$execute if data storage myriad:temp root.item{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:thick"}}} run return run loot replace block ~ ~ ~ container.$(slot) loot myriad:items/serum_of_sprouting

$execute if data storage myriad:temp root.item.components."minecraft:potion_contents"{"potion":"minecraft:awkward"} run return run item modify block ~ ~ ~ container.$(slot) myriad:set_potion_data/type/mundane
$execute if data storage myriad:temp root.item.components."minecraft:potion_contents"{"potion":"minecraft:water"} run return run item modify block ~ ~ ~ container.$(slot) myriad:set_potion_data/type/mundane
$execute unless data storage myriad:temp root.item{id:"minecraft:potion"} if data storage myriad:temp root.item.components."minecraft:potion_contents"{"potion":"minecraft:thick"} run item modify block ~ ~ ~ container.$(slot) myriad:set_potion_data/type/mundane
