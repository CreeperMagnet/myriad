# Commands to run when the villager levels up

tag @s add myriad.archaeologist.level_5

data remove entity @s Offers.Recipes[8]
data remove entity @s Offers.Recipes[8]
data remove entity @s Offers.Recipes[8]

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:12,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,xp:30}

# Trade 9
loot replace entity @s weapon.mainhand 2 loot myriad:trades/archaeologist/trade_9/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[-1].buyB set from entity @s equipment.offhand
loot replace entity @s weapon.mainhand 1 loot myriad:trades/archaeologist/trade_9/sell
execute if entity @s[nbt={equipment:{mainhand:{id:"minecraft:map"}}}] run data modify entity @s equipment.mainhand set value {id:"minecraft:map",count:1}
data modify entity @s Offers.Recipes[-1].sell set from entity @s equipment.mainhand

item replace entity @s weapon.mainhand with minecraft:shears[minecraft:item_model="myriad:entity/archaeologist/body"]
item replace entity @s weapon.offhand with minecraft:air
