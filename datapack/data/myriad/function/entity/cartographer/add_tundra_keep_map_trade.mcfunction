# Adds a new tundra keep map trade

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:12,uses:0,xp:5,priceMultiplier:0.05f,specialPrice:0,demand:0}
data modify entity @s Offers.Recipes[-1].sell set from entity @s equipment.mainhand


loot replace entity @s weapon.mainhand 2 loot myriad:trades/cartographer/trade_1/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[-1].buyB set from entity @s equipment.offhand