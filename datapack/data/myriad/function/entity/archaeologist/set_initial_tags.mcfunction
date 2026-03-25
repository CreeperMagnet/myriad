# Sets the initial trades of a archaeologist

tag @s add myriad.archaeologist
tag @s add smithed.entity

item replace entity @s armor.head with minecraft:shears[minecraft:item_model="myriad:entity/archaeologist/head"]
execute unless data entity @s CustomName run team join myriad.no_nametag
execute unless data entity @s CustomName run data modify entity @s CustomName set value {"translate":"entity.myriad.archaeologist"}
data modify entity @s drop_chances set value {mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f}


data modify entity @s Offers.Recipes set value [{buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:16,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:1},{buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:3,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:2}]


# Trade 1
loot replace entity @s weapon.mainhand 2 loot myriad:trades/archaeologist/trade_1
data modify entity @s Offers.Recipes[0].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[0].sell set from entity @s equipment.offhand

# Trade 2
loot replace entity @s weapon.mainhand 2 loot myriad:trades/archaeologist/trade_2
data modify entity @s Offers.Recipes[1].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[1].sell set from entity @s equipment.offhand

item replace entity @s weapon.mainhand with minecraft:shears[minecraft:item_model="myriad:entity/archaeologist/body"]
item replace entity @s weapon.offhand with minecraft:air