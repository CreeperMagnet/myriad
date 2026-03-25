# Commands to run as the baby trader entity found during raycasting

tag @p[advancements={myriad:technical/player_interacted_with_entity/baby_trader_entity_golden_dandelion=true}] add myriad.tag
scoreboard players set @s myriad.golden_dandelion_cooldown 40
scoreboard players reset @s myriad.dummy2

execute if entity @s[tag=myriad.age_locked] run playsound minecraft:item.golden_dandelion.unuse neutral @a[distance=..16]
execute if entity @s[tag=myriad.age_locked] run return run tag @s remove myriad.age_locked

playsound minecraft:item.golden_dandelion.use neutral @a[distance=..16]
tag @s add myriad.age_locked