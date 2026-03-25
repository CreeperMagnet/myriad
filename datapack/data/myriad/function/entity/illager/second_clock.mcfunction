# Second-clocks an illager

execute on attacker run tag @s[type=!minecraft:player,distance=0.0001..,tag=!myriad.illager] add myriad.illager_target
execute if entity @s[tag=!myriad.spellcasting] unless entity @s[tag=!myriad.iceologer,tag=!myriad.geomancer] if entity @n[predicate=myriad:entity_properties/targeted_by_illagers,distance=..16] run function myriad:entity/illager/line_of_sight
execute if entity @s[tag=myriad.iceologer,tag=myriad.spellcasting] run function myriad:entity/iceologer/spell_cast
execute if entity @s[tag=myriad.geomancer,tag=myriad.spellcasting] run function myriad:entity/geomancer/spell_cast
execute if entity @s[tag=myriad.enchanter,tag=!myriad.spellcasting,predicate=myriad:random_chance/0.33] if entity @e[type=#myriad:enchanter_affected,predicate=!myriad:entity_properties/is_affected_by_enchanter,distance=..10] run function myriad:entity/enchanter/spell_start
execute if entity @s[tag=myriad.enchanter,tag=myriad.spellcasting] run function myriad:entity/enchanter/spell_cycle

execute if data entity @s active_effects[{id:"minecraft:glowing"}] run data modify entity @s Glowing set value 1b
execute if entity @s[nbt={Glowing:1b}] unless data entity @s active_effects[{id:"minecraft:glowing"}] run data modify entity @s Glowing set value 0b

execute if entity @s[tag=!myriad.enchanter] if score #difficulty myriad.dummy matches 0 run tp ~ -1000 ~