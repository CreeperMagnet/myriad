# Commands to run when the villager levels up

tag @s add myriad.archaeologist.level_4

data remove entity @s Offers.Recipes[6]
data remove entity @s Offers.Recipes[6]
data remove entity @s Offers.Recipes[6]

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:16,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,xp:20}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:3,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,xp:30}

# Trade 7
loot replace entity @s weapon.mainhand 2 loot myriad:trades/archaeologist/trade_7
data modify entity @s Offers.Recipes[-2].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[-2].sell set from entity @s equipment.offhand

# Trade 8
loot replace entity @s weapon.mainhand 2 loot myriad:trades/archaeologist/trade_8
data modify entity @s Offers.Recipes[-1].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[-1].sell set from entity @s equipment.offhand


item replace entity @s weapon.mainhand with minecraft:shears[minecraft:item_model="myriad:entity/archaeologist/body"]
item replace entity @s weapon.offhand with minecraft:air
