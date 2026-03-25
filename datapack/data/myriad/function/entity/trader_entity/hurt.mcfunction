# Creates hurt color and noises

execute if score @s[tag=!myriad.silent] myriad.dummy matches 9 run function myriad:entity/trader_entity/sounds/hurt
item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}
