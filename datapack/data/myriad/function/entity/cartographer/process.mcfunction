# Adds new trades to cartographers

execute if data entity @s VillagerData{type:"minecraft:plains"} if predicate myriad:random_chance/0.5 run function myriad:entity/cartographer/cherry_grove_map_trade

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:12,uses:0,xp:5,priceMultiplier:0.05f,specialPrice:0,demand:0}

loot replace entity @s weapon.mainhand 2 loot myriad:trades/cartographer/trade_1/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[-1].buyB set from entity @s equipment.offhand
loot replace entity @s weapon.mainhand 2 loot myriad:trades/cartographer/trade_1/sell
execute if entity @s[nbt={equipment:{mainhand:{id:"minecraft:map"}}}] run data modify entity @s equipment.mainhand set value {id:"minecraft:map",count:1}
data modify entity @s Offers.Recipes[-1].sell set from entity @s equipment.mainhand

item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

tag @s add myriad.modified_vanilla_entity