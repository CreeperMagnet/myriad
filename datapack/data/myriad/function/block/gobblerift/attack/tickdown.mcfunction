# Commands to run every tick for gobblerifts

scoreboard players remove @s myriad.dummy2 1
execute unless entity @s[scores={myriad.dummy2=1..}] run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value false
execute unless entity @s[scores={myriad.dummy2=1..}] on passengers run tag @s remove myriad.gobblerift.hurt
