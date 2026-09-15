# Adds cherry grove map trade to plains cartographers
loot replace entity @s weapon.mainhand 2 loot myriad:trades/cartographer/trade_2/sell
execute unless items entity @s weapon.mainhand *[minecraft:map_id] run return fail

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:12,uses:0,xp:5,priceMultiplier:0.05f,specialPrice:0,demand:0}
data modify entity @s Offers.Recipes[-1].sell set from entity @s equipment.mainhand


loot replace entity @s weapon.mainhand 2 loot myriad:trades/cartographer/trade_2/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[-1].buyB set from entity @s equipment.offhand
execute if entity @s[nbt={equipment:{mainhand:{id:"minecraft:map"}}}] run data modify entity @s equipment.mainhand set value {id:"minecraft:map",count:1}


item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air