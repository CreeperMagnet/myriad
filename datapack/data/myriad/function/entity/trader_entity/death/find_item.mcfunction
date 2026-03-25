# Where were you when trader entity was kil?

execute as @e[type=minecraft:item,tag=!smithed.entity] if items entity @s contents *[minecraft:custom_data~{myriad:{id:"death_item"}}] at @s run function myriad:entity/trader_entity/death/effects
