# Summons a coral drowned

summon minecraft:drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["myriad.modified_vanilla_entity","myriad.coral_drowned","myriad.coral_drowned.bubble"],DeathLootTable:"myriad:entities/coral_drowned/bubble",equipment:{mainhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/coral_drowned/arm","minecraft:custom_model_data":{"strings":["bubble"]}}},offhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/coral_drowned/arm","minecraft:custom_model_data":{"strings":["bubble"]}}},head:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/coral_drowned/head","minecraft:custom_model_data":{"strings":["bubble"]}}}},drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f}}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
