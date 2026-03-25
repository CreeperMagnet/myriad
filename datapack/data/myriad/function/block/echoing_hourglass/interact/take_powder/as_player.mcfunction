# Either /gives or /item replaces based on if you have item in mainhand

data modify storage myriad:temp root.macro_input.item.slot set value "weapon.mainhand"
execute if data storage myriad:temp root.macro_input.item.components."minecraft:block_entity_data"{id:"minecraft:brushable_block"} run advancement grant @s only myriad:minecraft/adventure/use_echoing_hourglass
execute unless data storage myriad:temp root.macro_input.item.components run data modify storage myriad:temp root.macro_input.item.components set value {}
execute if data entity @s SelectedItem run return run function myriad:technical/macros/loot/give with storage myriad:temp root.macro_input.item
execute unless data entity @s SelectedItem run return run function myriad:technical/macros/loot/replace with storage myriad:temp root.macro_input.item