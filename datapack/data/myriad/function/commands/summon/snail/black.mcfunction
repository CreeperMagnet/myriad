# Summons a snail
data remove storage myriad:temp root
data modify storage myriad:temp root.snail_bucket.components."minecraft:custom_data".myriad.variant set value "black"
function myriad:entity/snail/summon/spawn
tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.myriad.snail"}]}