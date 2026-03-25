# Adds cherry grove map trade to plains cartographers

loot replace entity @s weapon.mainhand 2 loot myriad:trades/cartographer/trade_2/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[-1].buyB set from entity @s equipment.offhand
loot replace entity @s weapon.mainhand 2 loot myriad:trades/cartographer/trade_2/sell
execute if entity @s[nbt={equipment:{mainhand:{id:"minecraft:map"}}}] run data modify entity @s equipment.mainhand set value {id:"minecraft:map",count:1}
data modify entity @s Offers.Recipes[-1].sell set from entity @s equipment.mainhand


item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
