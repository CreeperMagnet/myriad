# Disables spawning for specific custom entities

execute if entity @s[advancements={myriad:technical/item_used_on_block/converted_spawn_egg={use_pig_spawn_egg=true}}] run data modify entity @n[type=minecraft:pig,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] Tags set value ["myriad.modified_vanilla_entity"]
execute if entity @s[advancements={myriad:technical/item_used_on_block/converted_spawn_egg={use_witch_spawn_egg=true}}] run data modify entity @n[type=minecraft:witch,tag=!myriad.modified_vanilla_entity,tag=!smithed.entity] Tags set value ["myriad.modified_vanilla_entity"]
advancement revoke @s only myriad:technical/item_used_on_block/converted_spawn_egg
