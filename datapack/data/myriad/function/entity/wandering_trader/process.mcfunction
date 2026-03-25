# Adds new trades to wandering traders

data modify entity @s Offers.Recipes set value []

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_trader/buy
function myriad:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_trader/seeds
function myriad:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_trader/flowers
function myriad:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_trader/saplings
function myriad:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_trader/cave_items
function myriad:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_trader/warm_biome_items
function myriad:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_trader/ocean_items
function myriad:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_trader/bucketed_mob/main
function myriad:entity/wandering_trader/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1

item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

tag @s add myriad.modified_vanilla_entity
