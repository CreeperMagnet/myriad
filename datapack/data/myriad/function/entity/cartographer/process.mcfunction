# Adds new trades to cartographers

execute if data entity @s VillagerData{type:"minecraft:plains"} if predicate myriad:random_chance/0.5 run function myriad:entity/cartographer/cherry_grove_map_trade

loot replace entity @s weapon.mainhand 2 loot myriad:trades/cartographer/trade_1/sell
execute if items entity @s weapon.mainhand *[minecraft:map_id] run function myriad:entity/cartographer/add_tundra_keep_map_trade

item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
tag @s add myriad.modified_vanilla_entity