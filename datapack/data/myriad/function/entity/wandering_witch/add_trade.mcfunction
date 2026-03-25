# Adds a new trade

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:spider_eye",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:4,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}
data modify entity @s Offers.Recipes[-1].buy set from entity @s equipment.mainhand
data modify entity @s Offers.Recipes[-1].sell set from entity @s equipment.offhand