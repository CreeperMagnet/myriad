# Spawns invalids in item form

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.item set from storage myriad:temp root.sherds[0]
execute unless data storage myriad:temp root.macro_input.item.count run data modify storage myriad:temp root.macro_input.item.count set value 1
execute unless data storage myriad:temp root.macro_input.item.components run data modify storage myriad:temp root.macro_input.item.components set value {}
function myriad:technical/macros/loot/spawn with storage myriad:temp root.macro_input.item
data remove storage myriad:temp root.sherds[0]
execute if data storage myriad:temp root.sherds[0] run function myriad:block/decorated_pot/break/summon_sherds/spawn_loop