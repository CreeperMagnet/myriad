# Ticks a living entity with a wandering trader base

# custom_model_data.flags[0] = hurt
# custom_model_data.flags[1] = moving

# commented out for #316 fix #item replace entity @s weapon.mainhand from entity @s armor.chest

# Begin edits for #316 fix
rotate @s ~ 0
item modify entity @s armor.head {"type":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","values":[false,false]}}
item replace entity @s weapon.mainhand with air
effect give @s invisibility infinite 0 true
item modify entity @s[predicate=myriad:entity_properties/animated_trader_entity] armor.head {"type":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","offset":1,size:1,"values":[true]}}
# End edits for #316 fix


execute store result score @s myriad.dummy run data get entity @s HurtTime
execute unless score @s myriad.dummy matches 0 run return run function myriad:entity/trader_entity/hurt

# Golden dandelion particles
execute if score @s myriad.golden_dandelion_cooldown matches 1.. run function myriad:entity/trader_entity/golden_dandelion/tickdown