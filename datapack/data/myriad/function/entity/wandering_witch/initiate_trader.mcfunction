# Commands to give the witch trades

data modify entity @s wander_target set value [I;0,0,0]
execute store result entity @s wander_target[0] int 1 run data get storage myriad:temp root.pos[0]
execute store result entity @s wander_target[1] int 1 run data get storage myriad:temp root.pos[1]
execute store result entity @s wander_target[2] int 1 run data get storage myriad:temp root.pos[2]

data merge entity @s {DespawnDelay:48000,CustomName:{"translate":"entity.myriad.wandering_witch"},Team:"smithed.prevent_aggression",DeathLootTable:"myriad:entities/wandering_witch",DeathTime:19s,drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f},Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["myriad.wandering_witch","myriad.trader_entity","smithed.entity"],equipment:{mainhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/wandering_witch/body","minecraft:custom_model_data":{"flags":[false,false]}}},head:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/wandering_witch/head","minecraft:custom_model_data":{"flags":[false]}}},chest:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/wandering_witch/body","minecraft:custom_model_data":{"flags":[false,false]}}}}}
data modify entity @s Offers.Recipes set value []

loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_witch/buy_trade_spider_eye
function myriad:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_witch/buy_trade_fermented_spider_eye
function myriad:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_witch/cauldron_or_chains
function myriad:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_witch/powders
function myriad:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_witch/potions
function myriad:entity/wandering_witch/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1


loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_witch/rare_mob_drop
function myriad:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot myriad:trades/wandering_witch/final_trade
function myriad:entity/wandering_witch/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1


item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

data remove storage myriad:temp root
data modify storage myriad:temp root.UUID set from entity @s UUID
