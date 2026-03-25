# Deactivates the creaking connector

scoreboard players reset @s myriad.dummy2
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_all","values":[false]}}
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.1 with air
playsound myriad:block.creaking_connector.turn_off block @a[distance=..16] ~ ~0.5 ~