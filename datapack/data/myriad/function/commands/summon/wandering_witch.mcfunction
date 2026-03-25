# Summons an wandering witch

data modify storage myriad:temp root.pos set from entity @s Pos
execute summon minecraft:wandering_trader run function myriad:entity/wandering_witch/initiate_trader
tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.myriad.wandering_witch"}]}
