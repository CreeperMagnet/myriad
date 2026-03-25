# Summons a coral drowned

summon minecraft:drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["myriad.modified_vanilla_entity","myriad.coral_drowned","myriad.coral_drowned.brain"],DeathLootTable:"myriad:entities/coral_drowned/brain",equipment:{mainhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/coral_drowned/arm","minecraft:custom_model_data":{"strings":["brain"]}}},offhand:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/coral_drowned/arm","minecraft:custom_model_data":{"strings":["brain"]}}},head:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:entity/coral_drowned/head","minecraft:custom_model_data":{"strings":["brain"]}}}},drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f}}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
